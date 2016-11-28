campaign = null
@Round = new ReactiveVar 0
@Time = new ReactiveVar 0

Template.publicCampaign.onCreated ->
  @.autorun ->
    sub = Meteor.subscribe 'campaign', FlowRouter.getParam('slug'), FlowRouter.getParam('code')
    if sub.ready()
      $('.campaign').removeClass('loading')

Template.publicCampaign.helpers
  campaign: ->
    if(campaign = Campaign.findOne { slug: FlowRouter.getParam('slug') })
      campaign.turnOrder = _.sortBy( _.sortBy( _.sortBy( _.sortBy(campaign.turnOrder, 'name'), 'player'), 'initiative').reverse(), 'done')
      return campaign
  round: -> Round.get()
  time: -> Utils.time.toHHMMSS(Time.get())
