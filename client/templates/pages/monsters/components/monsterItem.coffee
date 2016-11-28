Template.monsterItem.onRendered ->
  $('.button').popup()
  $('.monsterItem .header').popup()

  $('.addToEncounterButton').dropdown
    onChange: (encounterSlug) ->
      self = @
      switch encounterSlug
        when 'newEncounter21'
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
              Meteor.call 'addEncounter', @.swalForm.name, $(self).data('slug')
        else
          Meteor.call 'addToEncounter', encounterSlug, $(self).data('slug')

Template.monsterItem.helpers
  encounters: -> Encounter.find {}
  mine: ->
    if Meteor.user()
      @.userId == Meteor.user()._id