Migrations.add
  version: 10
  name: 'Custom Monsters to Monsters collection'
  down: ->
    Monster.remove { custom: true }
  up: ->
    CustomMonster.find().forEach (monster) ->
      monster.userId = monster.createdBy
      monster.custom = true
      Monster.insert monster, { validate: false }