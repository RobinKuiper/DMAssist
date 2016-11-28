monster = new ReactiveVar null

Template.monster.onCreated ->
  @.autorun ->
    sub = Meteor.subscribe 'monster', FlowRouter.getParam 'slug'
    if sub.ready()
      $('#monster').removeClass('loading')
      monster.set Monster.findOne { slug: FlowRouter.getParam 'slug' }

Template.monster.onRendered ->
  $('.button').popup()

Template.monster.helpers
  monster: -> monster.get()
  mine: -> monster.get().userId == Meteor.user()._id