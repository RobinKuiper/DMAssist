Migrations.add
  version: 18
  name: 'Set Moderated on monsters'
  down: -> console.log 'Down'
  up: ->
    Monster.find().forEach (monster) ->
      moderated = if monster.custom then { moderated: false } else { moderated: true }
      Monster.update monster._id, { validate: false, $set: moderated }
