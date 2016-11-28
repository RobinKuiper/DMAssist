Template.dashboardCampaignItem.onRendered ->
  $('.button').popup()

Template.dashboardCampaignItem.events
  'click .item': -> FlowRouter.go '/campaigns/'+@.slug