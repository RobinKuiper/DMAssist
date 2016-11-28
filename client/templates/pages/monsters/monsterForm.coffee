Template.monsterForm.onRendered ->
  @.autorun ->
    if slug = FlowRouter.getParam('slug')
      $('#monsterForm').addClass('loading')
      sub = Meteor.subscribe 'monster', slug
      if sub.ready()
        $('#monsterForm').removeClass('loading')
        AutoForm.resetForm('monsterForm')

  AutoForm.addHooks ['monsterForm'], {
    onSuccess: ->
      FlowRouter.go '/monsters/mine'
  }

Template.monsterForm.helpers
  formType: -> if FlowRouter.getParam('slug') then 'update' else 'insert'
  doc: -> if FlowRouter.getParam('slug') then Monster.findOne { userId: Meteor.user()._id, slug: FlowRouter.getParam('slug') } else null