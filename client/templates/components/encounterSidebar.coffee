activeEncounter = new ReactiveVar null

Template.encounterSidebar.onRendered ->
  $('.button').popup()
  $('.dropdown').popup()

  @.autorun ->
    if Meteor.user()
      sub = Meteor.subscribe 'encounters'
      if sub.ready()
        $('#encounterSidebar .loading').removeClass('loading')
        $('#encounterSelect').dropdown
          onChange: (encounterSlug) ->
            activeEncounter.set encounterSlug
        if Encounter.find().count() == 1
          $('#encounterSelect').dropdown('set selected', Encounter.findOne().slug)

Template.encounterSidebar.helpers
  encounters: -> Encounter.find {}
  campaigns: -> Campaign.find {}
  activeEncounter: ->
    if activeEncounter.get() != null
      if encounter = Encounter.findOne { slug: activeEncounter.get() }
        encounter.totalXp = 0
        encounter.totalMonsters = 0
        encounter.adjustedXp = 0

        if encounter.monsters
          for monster in encounter.monsters
            encounter.totalXp += monster.xp
            encounter.totalMonsters++

          mod = 1
          switch encounter.totalMonsters
            when 1 then mod = 1
            when 2 then mod = 1.5
            when 3, 4, 5, 6 then mod = 2
            when 7, 8, 9, 10 then mod = 2.5
            when 11, 12, 13, 14 then mod = 3
            else mod = 4

          encounter.adjustedXp = encounter.totalXp * mod

        return encounter


Template.encounterSidebar.events
  'click #close .close.icon': -> $('#encounterSidebar').sidebar('hide')

  'click .add.encounter.button': ->
    sweetAlert.withForm
      title: 'Create Encounter'
      confirmButtonText: 'Save'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'name', placeholder: 'Encounter Name' }
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'addEncounter', @.swalForm.name, (err, result) ->
          if !err
            encounter = Encounter.findOne(result)
            activeEncounter.set encounter.slug
            $('#encounterSelect').dropdown('refresh')
            $('#encounterSelect').dropdown('set selected', encounter.slug)

  'click .remove.encounter.button': ->
    sweetAlert
      title: "Are you sure?"
      text: "You will not be able to recover this encounter!"
      type: "warning"
      showCancelButton: true
      closeOnConfirm: true
    , ->
      Meteor.call 'removeEncounter', activeEncounter.get()

  'click #generateTreasure': ->
    encounter = Encounter.findOne { slug: activeEncounter.get() }
    if encounter.monsters
      ratings = []
      for monster in encounter.monsters
        ratings.push monster.cr
      Meteor.call 'addTreasure', activeEncounter.get(), Treasure.generate(ratings, 0)