campaign = new ReactiveVar null

Template.campaign.onCreated ->
  @.autorun ->
    sub = Meteor.subscribe 'campaign', FlowRouter.getParam('slug')
    if sub.ready()
      $('.campaign').removeClass('loading')

  Meteor.subscribe 'monsters'
  Meteor.subscribe 'encounters'

Template.campaign.onRendered ->
  clipboard = new Clipboard('#copyPublicLink')

  $('.campaign .tabular .item').tab()

  $('.accordion').accordion()

  $('#publicLink').popup
    on: 'click'
    hoverable: true
  $('.button').popup()

Template.campaign.helpers
  campaign: ->
    if(c = Campaign.findOne { slug: FlowRouter.getParam('slug') })
      c.turnOrder = _.sortBy( _.sortBy( _.sortBy( _.sortBy(c.turnOrder, 'name'), 'player'), 'initiative').reverse(), 'done')
      if c.treasures
        c.treasures.reverse()
      campaign.set c
      return c

Template.campaign.events
  'change #showHPCheck': (e) ->
    Meteor.call 'updateCampaignPublicSettings', campaign.get().slug, e.target.checked, campaign.get().public.settings.showAC
  'change #showACCheck': (e) ->
    Meteor.call 'updateCampaignPublicSettings', campaign.get().slug, campaign.get().public.settings.showHP, e.target.checked

  'click #resetTimeButton': -> Meteor.call 'resetTime', campaign.get().slug
  'click #shortRestButton': -> Meteor.call 'addTime', campaign.get().slug, campaign.get().settings.shortRest
  'click #longRestButton': -> Meteor.call 'addTime', campaign.get().slug, campaign.get().settings.longRest
  'click #addTimeButton': (e) ->
    sweetAlert.withForm
      title: 'Increase Time'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'time', placeholder: 'eg. 1H, 25M, 380S' }
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'addTime', campaign.get().slug, @.swalForm.time