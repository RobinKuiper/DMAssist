Migrations.add
  version: 12
  name: 'Add Campaign Settings'
  down: -> console.log '12 Down'
  up: ->
    Campaign.update {}, { $set: 'settings.round': 6, 'settings.shortRest': '1H', 'settings.longRest': '8H' }, { multi: true }