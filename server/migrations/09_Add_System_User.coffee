Migrations.add
  version: 9
  name: 'Add system user'
  down: -> console.log 'Down'
  up: ->
    user =
      _id: '0'
      profile:
        name: 'System'
    Meteor.users.insert user