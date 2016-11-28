Template.adminSidebar.onRendered ->
  #$('.accordion.item').children('.menu').slideToggle()
  @.autorun ->
    if !Meteor.user()
      $('#userMenu').dropdown()

Template.adminSidebar.helpers
  username: ->
    if Meteor.user().profile.name.length > 7
      return Meteor.user().profile.name.substring(0, 7) + '..'
    else
      return Meteor.user().profile.name

Template.adminSidebar.events
  'click #signOut': -> Meteor.logout()
  'click #facebookButton': ->
    Meteor.loginWithFacebook()
  'click #googleButton': ->
    Meteor.loginWithGoogle()
  'click .accordion.item': (e) ->
    menu = $(e.currentTarget).next('.menu')
    menu.slideToggle()
