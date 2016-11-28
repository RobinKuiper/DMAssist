Template.profileInfo.events
  'submit form': (e) ->
    e.preventDefault()

    profile =
      firstName: e.target.firstName.value
      lastName: e.target.lastName.value
      name: e.target.displayName.value

    if profile.name.length < 3
      sAlert.error 'Display name can\'t be less then 3 characters.'
    else
      Meteor.call 'updateUserProfile', profile