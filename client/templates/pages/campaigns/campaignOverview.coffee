Template.campaignOverview.onCreated ->
  @.autorun ->
    sub = Meteor.subscribe 'campaigns'
    if sub.ready()
      $('#campaigns').removeClass('loading')

Template.campaignOverview.helpers
  campaigns: -> Campaign.find {}, { sort: createdAt: -1 }
  countCampaigns: -> Campaign.find().count()
  hasCampaigns: -> Campaign.find().count() > 0