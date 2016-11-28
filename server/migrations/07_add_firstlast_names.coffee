Migrations.add
  version: 7
  name: 'Change Roles'
  down: -> console.log 'Down'
  up: ->
    Meteor.users.find().forEach (user) ->
      Meteor.users.update user._id, { $set:
        'profile.firstName': user.services.google.given_name
        'profile.lastName': user.services.google.family_name
      }