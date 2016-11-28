Template.campaignItem.events
  'click .item': (e) ->
    slug = $(e.currentTarget).data('slug')

    if(!$(e.target).hasClass('.icon'))
      FlowRouter.go '/campaigns/'+slug