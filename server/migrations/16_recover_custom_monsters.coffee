Migrations.add
  version: 16
  name: 'Recover Custom monsters'
  down: -> Monster.remove { custom: true }
  up: ->
    MonsterOld.find({ custom: true }).forEach (monster) ->
      if monster.actions
        actions = []
        for action in monster.actions
          actions.push { name: action.name, desc: action.description }

      if monster.reactions
        reactions = []
        for reaction in monster.reactions
          reactions.push { name: reaction.name, desc: reaction.description }

      if monster.Lactions
        legendary_actions = []
        for action in monster.Laction
          legendary_actions.push { name: action.name, desc: action.description }

      if monster.passives
        special_abilities = []
        for action in monster.passives
          special_abilities.push { name: action.name, desc: action.description }

      newMonster =
        _id: monster._id
        name: monster.name
        custom: true
        userId: monster.userId
        public: true
        type: monster.type.toLowerCase()
        size: monster.size
        speed: '0'
        challenge_rating: monster.cr
        alignment: 'neutral'
        hit_points: monster.hp
        hit_dice: monster.hitDice + '+' + monster.hitDiceModifier
        armor_class: monster.ac
        strength: monster.abilities.strength
        dexterity: monster.abilities.dexterity
        constitution: monster.abilities.constitution
        intelligence: monster.abilities.intelligence
        wisdom: monster.abilities.wisdom
        charisma: monster.abilities.charisma
        actions: actions
        reactions: reactions
        legendary_actions: legendary_actions
        special_abilities: special_abilities
        moderated: false
      Monster.insert newMonster