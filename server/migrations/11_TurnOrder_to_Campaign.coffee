Migrations.add
  version: 11
  name: 'TurnOrder to Campaign'
  down: -> console.log '11 Down'
  up: ->
    turnOrder.find().forEach (turnorder) ->
      turnorder.number = turnorder.amount
      Campaign.update { _id: turnorder.campaignId }, { $push: turnOrder: turnorder }