Meteor.methods
  resetTime: (slug) ->
    Campaign.update { slug: slug, dm: @userId }, { $set: time: 0 }

  addTime: (campaignSlug, time) ->
    seconds = Utils.time.toSeconds(time)

    campaign = Campaign.findOne { slug: campaignSlug, dm: @userId }
    players = []
    for i in [0...campaign.players.length]
      buffs = []
      if campaign.players[i].hasOwnProperty('buffs')
        for j in [0...campaign.players[i].buffs.length]
          campaign.players[i].buffs[j].duration -= seconds
          buffs.push campaign.players[i].buffs[j]
      campaign.players[i].buffs = buffs
      if campaign.players[i].concentration
        campaign.players[i].concentration.duration -= seconds
      players.push campaign.players[i]

    turnOrder = []
    for i in [0...campaign.turnOrder.length]
      buffs = []
      if campaign.turnOrder[i].hasOwnProperty('buffs')
        for j in [0...campaign.turnOrder[i].buffs.length]
          campaign.turnOrder[i].buffs[j].duration -= seconds
          buffs.push campaign.turnOrder[i].buffs[j]
      campaign.turnOrder[i].buffs = buffs
      if campaign.turnOrder[i].concentration
        campaign.turnOrder[i].concentration.duration -= seconds
      turnOrder.push campaign.turnOrder[i]

    Campaign.update { slug: campaignSlug, dm: @userId }, { $set: { players: players, turnOrder: turnOrder }, $inc: time: seconds }

  updateName: (campaignSlug, creature, name) ->
    Campaign.update { dm: @userId, slug: campaignSlug, 'turnOrder': creature }, { $set: 'turnOrder.$.name': name }

  updateInitiative: (campaignSlug, creature, initiative) ->
    Campaign.update { dm: @userId, slug: campaignSlug, 'turnOrder': creature }, { $set: 'turnOrder.$.initiative': initiative }

  updateHP: (campaignSlug, creature, hp) ->
    Campaign.update { dm: @userId, slug: campaignSlug, 'turnOrder': creature }, { $inc: 'turnOrder.$.hp': hp }

  setDone: (campaignSlug, creature, all=false) ->
    if all
      for i, creature of Campaign.findOne({ dm: @userId, slug: campaignSlug }).turnOrder
        Campaign.update { slug: campaignSlug, 'turnOrder.done': true }, { $set: 'turnOrder.$.done': false }
    else
      Campaign.update { slug: campaignSlug, 'turnOrder': creature, dm: @userId }, { $set: 'turnOrder.$.done': true }

  removeFromTurnOrder: (campaignSlug, creature, all=false) ->
    if all
      for i, creature of Campaign.findOne({ slug: campaignSlug, dm: @userId }).turnOrder
        Campaign.update { slug: campaignSlug, dm: @userId }, { $pull: turnOrder: creature }
    else
      Campaign.update { slug: campaignSlug, dm: @userId }, { $pull: turnOrder: creature }

  addConcentration: (campaignSlug, creature, concentration) ->
    concentration.concentrationName = if concentration.concentrationName == '' then 'Concentration' else concentration.concentrationName
    concentration.duration = Utils.time.toSeconds(concentration.duration)

    Campaign.update { slug: campaignSlug, 'players': creature, dm: @userId }, { $set: 'players.$.concentration': concentration }
    Campaign.update { slug: campaignSlug, 'turnOrder': creature, dm: @userId }, { $set: 'turnOrder.$.concentration': concentration }

  addBuff: (campaignSlug, creature, buff) ->
    buff.buffName = if buff.buffName == '' then 'Buff' else buff.buffName
    buff.duration = Utils.time.toSeconds(buff.duration)

    Campaign.update { slug: campaignSlug, 'players': creature, dm: @userId }, { $push: 'players.$.buffs': buff }
    Campaign.update { slug: campaignSlug, 'turnOrder': creature, dm: @userId }, { $push: 'turnOrder.$.buffs': buff }

  addEffect: (campaignSlug, creature, effect) ->
    Campaign.update { slug: campaignSlug, 'players': creature, dm: @userId }, { $push: 'players.$.effects': effect }
    Campaign.update { slug: campaignSlug, 'turnOrder': creature, dm: @userId }, { $push: 'turnOrder.$.effects': effect }

  removeBuff: (campaignSlug, creature, buffName) ->
    campaign = Campaign.findOne { slug: campaignSlug, dm: @userId }
    for i in [0...campaign.players.length]
      if campaign.players[i].name == creature.name
        playerBuffs = []
        for j in [0...campaign.players[i].buffs.length]
          if campaign.players[i].buffs[j].buffName != buffName
            playerBuffs.push campaign.players[i].buffs[j]

    for i in [0...campaign.turnOrder.length]
      if campaign.turnOrder[i] == creature
        turnOrderBuffs = []
        for j in [0...campaign.turnOrder[i].buffs.length]
          if campaign.turnOrder[i].buffs[j].buffName != buffName
            turnOrderBuffs.push campaign.turnOrder[i].buffs[j]
    Campaign.update { slug: campaignSlug, dm: @userId, 'players': creature }, { $set: 'players.$.buffs': playerBuffs }
    Campaign.update { slug: campaignSlug, dm: @userId, 'turnOrder': creature }, { $set: 'turnOrder.$.buffs': turnOrderBuffs }

  removeEffect: (campaignSlug, creature, effect) ->
    Campaign.update { slug: campaignSlug, dm: @userId, 'players': creature }, { $pull: 'players.$.effects': effect }
    Campaign.update { slug: campaignSlug, dm: @userId, 'turnOrder': creature }, { $pull: 'turnOrder.$.effects': effect }

  removeConcentration: (campaignSlug, creature) ->
    Campaign.update { slug: campaignSlug, dm: @userId, 'players': creature }, { $set: 'players.$.concentration': null }
    Campaign.update { slug: campaignSlug, dm: @userId, 'turnOrder': creature }, { $set: 'turnOrder.$.concentration': null }

  resetTurnOrder: (campaignSlug) ->
    if(campaign = Campaign.findOne { slug: campaignSlug, dm: @userId })
      turnorder = []
      campaign.players.forEach (player) ->
        turnorder.push
          name: player.name
          hp: player.hp
          ac: player.ac
          level: player.level
          initiative: 0
          player: true
          done: false
          buffs: player.buffs
          effect: player.effects
          concentration: player.concentration
      Campaign.update { slug: campaignSlug, dm: @userId }, { $set: turnOrder: turnorder }

  addRowToTurnOrder: (campaignSlug) ->
    if(campaign = Campaign.findOne { dm: @userId, slug: campaignSlug })
      empty =
        name: ''
        initiative: 0
        player: false
        hp: 0
        done: false
      Campaign.update { dm: @userId, slug: campaignSlug }, { $push: turnOrder: empty }

  addCreatureToTurnOrder: (campaignSlug, creature) ->
    campaign = Campaign.findOne { dm: @userId, slug: campaignSlug }

    creature =
      name: creature.name
      initiative: 0
      player: false
      hp: creature.hit_points
      ac: creature.armor_class
      level: creature.challenge_rating
      dexterity: Utils.calc.modifier(creature.dexterity)
      done: false

    i = 1
    for turnOrder in campaign.turnOrder
      if turnOrder.name == creature.name
        i++

    creature.number = i

    Campaign.update { dm: @userId, slug: campaignSlug }, { $push: turnOrder: creature }

  removeCampaign: (campaignSlug) ->
    Campaign.remove { slug: campaignSlug, dm: @userId }

  updateCampaignPublicSettings: (campaignSlug, hp, ac) ->
    Campaign.update { slug: campaignSlug, dm: @userId }, { $set: 'public.settings.showHP': hp, 'public.settings.showAC': ac }

  addEncounter: (encounterName, monsterSlug) ->
    if @userId
      encounter =
        userId: @userId
        name: encounterName

      if monsterSlug
        encounter.monsters = [
          Monster.findOne { slug: monsterSlug }
        ]
      return Encounter.insert encounter

  countCampaigns: -> Campaign.find({ dm: @userId }).count()
  countMonsters: -> Monster.find({ public: $ne: false }).count()
  countMyMonsters: -> Monster.find({ userId: if @userId then @userId else 'aap' }).count()

  addToEncounter: (encounterSlug, monsterSlug) ->
    amount = 1
    encounter = Encounter.findOne({ slug: encounterSlug })
    if encounter.monsters
      encounter.monsters.forEach (monster) ->
        if monster.slug == monsterSlug
          amount++
    monster = Monster.findOne { slug: monsterSlug }
    monster.amount = amount
    delete monster._id
    Encounter.update { userId: @userId, slug: encounterSlug }, { $push: monsters: monster}

  removeEncounter: (encounterSlug) ->
    Encounter.remove { userId: @userId, slug: encounterSlug }

  removeMonsterFromEncounter: (encounterSlug, monster) ->
    Encounter.update { userId: @userId, slug: encounterSlug, monsters: monster }, { $pull: monsters: monster }

  addTreasure: (encounterSlug, treasure) ->
    Encounter.update { userId: @userId, slug: encounterSlug }, { $set: treasure: treasure }

  ###addAdmin: (userId) ->
    user = Meteor.users.findOne @userId
    if user.services.google.email == 'robingjkuiper@gmail.com'
      Roles.addUsersToRoles @userId, 'admin', Roles.GLOBAL_GROUP###