Migrations.add
  version: 17
  name: 'Old to new monsters in encounters'
  down: -> console.log 'Down'
  up: ->
    Encounter.find().forEach (encounter) ->
      monsters = []
      for i, monster of encounter.monsters
        console.log monster
        if(monster = Monster.findOne monster._id)
          console.log monster
          monsters.push monster
      Encounter.update encounter._id, { $set: monsters: monsters }