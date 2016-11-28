Migrations.add
  version: 8
  name: 'Custom Monsters To New Collection'
  down: -> console.log 'Down'
  up: ->
    Monster.find({custom: true}).forEach (monster) ->
      CustomMonster.insert monster, { validate: false }
      Monster.remove monster._id