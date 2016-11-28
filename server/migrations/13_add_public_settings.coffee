Migrations.add
  version: 13
  name: 'Add Public Campaign Settings'
  down: -> console.log '13 Down'
  up: ->
    Campaign.find().forEach (campaign) ->
      p =
        code: faker.random.number()
        settings:
          showHP: false
          showAC: false
      Campaign.update campaign._id, { $set: public: p }