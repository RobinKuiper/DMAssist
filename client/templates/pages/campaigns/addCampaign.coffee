Template.addCampaign.helpers
  omittedFields: -> [
    'dm'
    'time'
    'players.$.buffs'
    'createdAt'
    'updatedAt'
  ]
  fields: [
    'name'
    'players'
    'players.$.name'
    'players.$.level'
    'players.$.hp'
    'players.$.ac'
    'settings'
  ]

Template.addCampaign.events
  'click #addPlayer': -> console.log 'Add Player'
  'click .removePlayer': (e) -> $(e.currentTarget).parent().hide()