@Round = new ReactiveVar 0
@Time = new ReactiveVar 0

Template.turnOrder.onRendered ->
  $('#addEncounter').dropdown()
  $('#monsterDropdown').dropdown()

Template.turnOrder.helpers
  campaign: -> @.campaign
  encounters: -> Encounter.find {}
  monsters: -> Monster.find {}, { sort: name: 1 }
  round: -> Round.get()
  time: -> Utils.time.toHHMMSS(Time.get())

Template.turnOrder.events
  'click .roll.initiative': ->
    for creature in @.campaign.turnOrder
      if !creature.player && (!creature.initiative || creature.initiative == 0)
        Meteor.call 'updateInitiative', @.campaign.slug, creature, Utils.random.between(0, 20)+if creature.dexterity then creature.dexterity else 0
  'click #resetTurnOrderButton': ->
    Round.set 0
    Time.set 0
    #Meteor.call 'removeFromTurnOrder', campaign.slug, null, true
    Meteor.call 'resetTurnOrder', @.campaign.slug
  'click #addRowToTurnOrderButton': ->
    $('.campaign').addClass('loading')
    Meteor.call 'addRowToTurnOrder', @.campaign.slug, ->
      $('.campaign').removeClass('loading')
  'click #addEncounter .item': (e) ->
    if(encounter = Encounter.findOne { slug: $(e.currentTarget).data('value') })
      if encounter.monsters
        $('.campaign').addClass('loading')
        for monster in encounter.monsters
          Meteor.call 'addCreatureToTurnOrder', @.campaign.slug, monster, ->
            $('.campaign').removeClass('loading')
    $('#addEncounter').dropdown('clear')
  'click #monsterDropdown .item': (e) ->
    if(monster = Monster.findOne { slug: $(e.currentTarget).data('value') })
      $('.campaign').addClass('loading')
      Meteor.call 'addCreatureToTurnOrder', @.campaign.slug, monster, ->
        $('.campaign').removeClass('loading')
    $('#monsterDropdown').dropdown('clear')


