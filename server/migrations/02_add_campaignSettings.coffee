Migrations.add
  version: 2
  name: 'Add campaign settings'
  up: ->
    Campaign.update {}, { $set: 'settings.durations.round': 6, 'settings.durations.shortRest': '1H', 'settings.durations.longRest': '8H' }, { multi: true }