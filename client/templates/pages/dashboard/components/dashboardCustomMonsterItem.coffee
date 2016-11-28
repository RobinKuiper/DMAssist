Template.dashboardCustomMonsterItem.onRendered ->
  $('.button').popup()

Template.dashboardCustomMonsterItem.events
  'click .item': -> FlowRouter.go '/monsters/'+@.slug