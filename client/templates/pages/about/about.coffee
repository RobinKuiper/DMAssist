more = new ReactiveVar false

Template.about.helpers
  onlineUsers: -> Meteor.users.find({ 'status.online': true }).count()
  more: -> more.get()

Template.about.events
  'click .more': -> more.set true