Migrations.add
  version: 4
  name: 'Add slugs'
  down: -> console.log 'Down'
  up: ->
    Monster.find({ slug: $exists: false }).forEach (monster) ->
      Monster.update monster._id, { validate: false, $set: fake: '' }

    Campaign.find({ slug: $exists: false }).forEach (campaign) ->
      Campaign.update campaign._id, { $set: fake: '' }