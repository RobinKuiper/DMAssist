Meteor.methods
  updateUserProfile: (profile) ->
    update = {}
    if profile.name && profile.name.length >= 3
      update['profile.name'] = profile.name
    if profile.firstName
      update['profile.firstName'] = profile.firstName
    if profile.lastName
      update['profile.lastName'] = profile.lastName

    Meteor.users.update @userId, { $set: update }

  updateAvatar: (url) ->
    Meteor.users.update @userId, { $set: 'profile.picture': url}

  removeAccount: ->
    user = Meteor.users.findOne @userId
    removedUsers.insert user
    Meteor.users.remove @userId

  setFirstTimeToFalse: ->
    Meteor.users.update @userId, { $set: 'profile.firstTime': false }