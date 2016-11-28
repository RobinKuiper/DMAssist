Meteor.startup ->
  BlazeLayout.setRoot('body');
  AutoForm.setDefaultTemplate("semanticUI")
  SimpleSchema.debug = false

  Avatar.setOptions
    emailHashProperty: 'profile.email'
    customImageProperty: 'profile.picture'