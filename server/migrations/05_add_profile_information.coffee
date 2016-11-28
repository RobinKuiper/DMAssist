Migrations.add
  version: 5
  name: 'Add profile information'
  down: -> console.log 'Down'
  up: ->
    # Remove accounts created with password package
    Meteor.users.remove { 'profile.name': undefined }

    Meteor.users.find().forEach (user) ->
      user.profile.email = user.services.google.email
      user.profile.picture = user.services.google.picture
      Meteor.users.update user._id, { $set: user }