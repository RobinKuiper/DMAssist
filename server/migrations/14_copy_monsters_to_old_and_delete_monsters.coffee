Migrations.add
  version: 14
  name: 'Copy Monsters to MonsterOld and Remove Monsters'
  down: -> console.log '14 Down'
  up: ->
    Monster.find().forEach (monster) ->
      MonsterOld.insert monster, { validate: false }

    #Monster.remove { custom: { $ne: true }}
    Monster.remove {}