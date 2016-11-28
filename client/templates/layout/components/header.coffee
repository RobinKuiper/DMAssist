Template.header.onRendered ->
  #$('.ui.dropdown').dropdown()

Template.header.events
  'click #facebookButton': ->
    Meteor.loginWithFacebook()
  'click #googleButton': ->
    Meteor.loginWithGoogle()