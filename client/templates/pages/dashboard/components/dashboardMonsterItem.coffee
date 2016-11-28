Template.dashboardMonsterItem.onRendered ->
  $('.label').popup()

Template.dashboardMonsterItem.events
  'click .item': -> FlowRouter.go '/monsters/'+@.slug