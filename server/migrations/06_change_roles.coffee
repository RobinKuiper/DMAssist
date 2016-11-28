Migrations.add
  version: 6
  name: 'Change Roles'
  down: -> console.log 'Down'
  up: ->
    Meteor.users.find().forEach (user) ->
      if Roles.userIsInRole(user._id, 'admin', 'admins')
        Roles.removeUsersFromRoles user._id, 'admin', 'admins'
        if user.profile.email = 'robingjkuiper@gmail.com'
          Roles.addUsersToRoles user._id, 'admin', Roles.GLOBAL_GROUP
        else
          Roles.addUsersToRoles user._id, 'monster-editor', 'global'
          Roles.addUsersToRoles user._id, 'view-admin', 'global'