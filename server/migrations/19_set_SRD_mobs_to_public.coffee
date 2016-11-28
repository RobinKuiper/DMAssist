Migrations.add
  version: 19
  name: 'Set SRD Mobs to public'
  down: -> console.log 'Down'
  up: ->
    Monster.find().forEach (monster) ->
      unless monster.custom
        Monster.update monster._id, { validate: false, $set: public: true }
