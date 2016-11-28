campaign = null
campaignReady = new ReactiveVar false

Template.campaignSettings.onCreated ->
    sub = Meteor.subscribe 'campaign', FlowRouter.getParam('slug')

Template.campaignSettings.onRendered ->
  @.autorun ->
    if campaignReady.get()
      $('#campaignSettings').removeClass('loading')

Template.campaignSettings.helpers
  campaign: ->
    if(campaign = Campaign.findOne { slug: FlowRouter.getParam('slug') })
      campaignReady.set true
      return campaign
  omittedFields: [
    'dm'
    'time'
    'players.$.buffs'
    'createdAt'
    'updatedAt'
  ]
  fields: [
    'name'
    'settings'
    'players'
    'players.$.name'
    'players.$.level'
    'players.$.hp'
    'players.$.ac'
  ]

Template.campaignSettings.events
  'click #removeCampaign': ->
    sweetAlert
      title: "Are you sure?",
      text: "You will not be able to recover the campaign!",
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#DD6B55",
      confirmButtonText: "Yes, delete it!",
      closeOnConfirm: true
    , ->
      Meteor.call 'removeCampaign', campaign.slug, (err, result) ->
        if result
          FlowRouter.go 'dashboard'