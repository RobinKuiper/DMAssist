###Migrations.add
  version: 2
  name: 'Add statistics'
  up: ->
    statistics = {}
    campaigns = Campaing.find()

    statistics.users = Meteor.users.find().count()
    statistics.campaigns = campaigns.count()

    players = 0
    campaigns.forEach (campaigns) ->
      for i in [0...campaign.players.length]
        players++

    statistics.players = players

    Statistics.insert statistics
###