search = new ReactiveVar ''

sortBy = new ReactiveVar 'name'
sortOrder = new ReactiveVar 1

Template.adminCampaigns.helpers
  campaigns: ->
    select = {}
    if search.get() != ''
      select.name = { $regex: Utils.regex.search(search.get()), $options: 'i' }

    settings = {}
    settings.itemsPerPage = 50
    settings.sort = {}
    settings.sort[sortBy.get()] = sortOrder.get()

    CampaignPaginator.find select, settings

Template.adminCampaigns.events
  'keyup #search': (e) ->
    Meteor.clearTimeout t
    t = Meteor.setTimeout ->
      search.set e.target.value
    , 500

  'click th': (e) ->
    target = $(e.currentTarget)
    sortBy.set target.data('key')
    sortOrder.set 1
    if target.hasClass 'sorted'
      if target.hasClass 'ascending'
        target.removeClass 'ascending'
        target.addClass 'descending'
        sortOrder.set -1
      else
        target.removeClass 'descending'
        target.addClass 'ascending'
    else
      $('th').removeClass('sorted').removeClass('ascending').removeClass('descending')
      target.addClass('sorted').addClass('ascending')