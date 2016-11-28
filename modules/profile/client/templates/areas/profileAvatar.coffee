Template.profileAvatar.events
  'submit form': (e) ->
    e.preventDefault()

    url = e.target.url.value

    Utils.image.exists url, ->
      Meteor.call 'updateAvatar', url
    , ->
      sAlert.error 'This is not a valid image.'