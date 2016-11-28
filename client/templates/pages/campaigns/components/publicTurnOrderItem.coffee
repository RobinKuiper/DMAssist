campaignSlug = null

Template.turnOrderItem.onCreated ->
  campaignSlug = FlowRouter.getParam('slug')

Template.turnOrderItem.onRendered ->
  $('.label').popup()