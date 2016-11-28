@Statistics = new Mongo.Collection 'statistics'
@removedUsers = new Mongo.Collection 'removedUsers'

if Meteor.isClient
  Tracker.autorun ->
    if(Meteor.user() && (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'view-admin', 'global')))
      @UserPaginator = new Paginator Meteor.users