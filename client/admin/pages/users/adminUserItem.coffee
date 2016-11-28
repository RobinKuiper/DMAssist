Template.adminUserItem.onRendered ->
  $('.button').popup()

Template.adminUserItem.helpers
  isAdmin: -> Roles.userIsInRole(@._id, 'admin', 'admins')

Template.adminUserItem.events
  'click .makeAdmin': -> Meteor.call 'addAdmin', @._id