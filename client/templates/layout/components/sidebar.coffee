Template.sidebar.onRendered ->
  @.autorun ->
    if Meteor.user()
      $('#userMenu').dropdown()
    else
      $('#loginButton').dropdown
        on: 'hover'
        delay:
          hide: 1000

  $('.disabled.item').popup
    position: 'right center'

Template.sidebar.helpers
  username: ->
    if Meteor.user().profile.name.length > 7
      return Meteor.user().profile.name.substring(0, 7) + '..'
    else
      return Meteor.user().profile.name

Template.sidebar.events
  'click #signOut': -> Meteor.logout()
  'click #facebookButton': ->
    Meteor.loginWithFacebook()
  'click #googleButton': ->
    Meteor.loginWithGoogle()
  'click .accordion.item': (e) ->
    menu = $(e.currentTarget).next('.menu')
    menu.slideToggle()
