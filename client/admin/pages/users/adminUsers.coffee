search = new ReactiveVar ''

sortBy = new ReactiveVar 'profile.name'
sortOrder = new ReactiveVar 1

Template.adminUsers.helpers
  users: ->
    select = {}
    if search.get() != ''
      select.$or = [
        { 'profile.name': { $regex: Utils.regex.search(search.get()), $options: 'i' }}
        { 'profile.email': { $regex: Utils.regex.search(search.get()), $options: 'i' }}
      ]

    settings = {}
    settings.itemsPerPage = 50
    settings.sort = {}
    settings.sort[sortBy.get()] = sortOrder.get()

    UserPaginator.find select, settings

Template.adminUsers.events
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