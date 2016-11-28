Template.encounterMonsterItem.onRendered ->
  $('.button').popup()

Template.encounterMonsterItem.events
  'click #removeMonsterFromEncounter': -> Meteor.call 'removeMonsterFromEncounter', @.encounterSlug, @.monster