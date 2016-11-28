Template.loginButtons.events
  'click #facebookButton': ->
    Meteor.loginWithFacebook()
  'click #googleButton': ->
    Meteor.loginWithGoogle()