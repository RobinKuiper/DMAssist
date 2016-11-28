size = new ReactiveVar 'All'
type = new ReactiveVar 'All'
book = new ReactiveVar 'All'
minCR = new ReactiveVar 0
maxCR = new ReactiveVar 30
minAC = new ReactiveVar 0
maxAC = new ReactiveVar 30
sortBy = new ReactiveVar 'name'
sortOrder = new ReactiveVar 1
search = new ReactiveVar ''

myMonsters = new ReactiveVar false

itemsPerPage = new ReactiveVar 10
custom = new ReactiveVar true

Template.monsterOverview.onCreated ->
  @.autorun ->
    $('#monsterOverview').addClass('loading')
    myMonsters.set FlowRouter.getRouteName() == 'myMonsters'
    if myMonsters.get()
      monstersSub = Meteor.subscribe 'myMonsters'
      if monstersSub.ready()
        console.log Monster.find().fetch()
        $('#monsterOverview').removeClass('loading')
    else
      monstersSub = Meteor.subscribe 'monsters'
      if monstersSub.ready()
        $('#monsterOverview').removeClass('loading')

Template.monsterOverview.onRendered ->
  $('#toggleMonsterSidebar').popup()
  $('.dropdown.item').dropdown()

  $('.message .close').on 'click', ->
    $(@).closest('.message').transition 'fade', ->
      Cookie.set('SRDMonsterMessage', false)

  $('#customCheckbox').checkbox
    onChecked: ->
      MonsterPaginator.reset()
      custom.set true
    onUnchecked: ->
      MonsterPaginator.reset()
      custom.set false

  if custom.get()
    $('#customCheckbox').checkbox('set checked')

  $('#filterSidebar').sidebar({
    context: $('#monsterOverview')
    closable: true
    dimPage: false
    transition: 'overlay'
  }).sidebar(
    'attach events', '#toggleMonsterSidebar'
  )

Template.monsterOverview.helpers
  SRDMonsterMessage: -> if Cookie.get('SRDMonsterMessage') == 'false' then false else true
  ac: -> [0...31]
  cr: -> [1...31]
  search: -> search.get()
  mine: -> myMonsters.get()
  monsterCount: ->
    select = {}
    if !custom.get()
      select.custom = { $not: true }
    Monster.find(select).count()
  monsters: ->
    select = {}

    if !custom.get()
      select.custom = { $not: true }

    if search.get() != ''
      select.name = { $regex: Utils.regex.search(search.get()), $options: 'i' }

    if size.get() != 'All'
      select.size = size.get()

    if type.get() != 'All'
      select.type = type.get()

    select.armor_class = { $gt: (minAC.get()*1)-1, $lt: (maxAC.get()*1)+1 }
    select.challenge_rating = { $gt: (minCR.get()*1)-1, $lt: (maxCR.get()*1)+1 }

    settings = {}
    settings.itemsPerPage = itemsPerPage.get()
    settings.sort = {}
    settings.sort[sortBy.get()] = sortOrder.get()

    monsters = MonsterPaginator.find select, settings
    monsters.ready = true
    return monsters

Template.monsterOverview.events
  'keyup #searchInput': (e) ->
    Meteor.clearTimeout t
    t = Meteor.setTimeout ->
      MonsterPaginator.reset()
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

  'click #filterSize .item': (e) ->
    MonsterPaginator.reset()
    size.set $(e.currentTarget).html()
  'click #filterType .item': (e) ->
    MonsterPaginator.reset()
    type.set $(e.currentTarget).data('value')
  'click #filterMinCR .item': (e) ->
    MonsterPaginator.reset()
    minCR.set $(e.currentTarget).data('value')
  'click #filterMaxCR .item': (e) ->
    MonsterPaginator.reset()
    maxCR.set $(e.currentTarget).data('value')
  'click #filterMinAC .item': (e) ->
    MonsterPaginator.reset()
    minAC.set $(e.currentTarget).data('value')
  'click #filterMaxAC .item': (e) ->
    MonsterPaginator.reset()
    maxAC.set $(e.currentTarget).data('value')

  'change #selectItemsPerPage': (e) ->
    MonsterPaginator.reset()
    itemsPerPage.set e.target.value*1

  'click #encounterSidebarButton': -> $('#encounterSidebar').sidebar('toggle')