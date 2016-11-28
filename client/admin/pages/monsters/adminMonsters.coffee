activeMonster = new ReactiveVar null
custom = new ReactiveVar false

Template.adminMonsters.onRendered ->
  $('#customCheckbox').checkbox
    onChecked: -> custom.set true
    onUnchecked: -> custom.set false

Template.adminMonsters.helpers
  monster: -> Monster.findOne activeMonster.get()
  monsters: ->
    select = {}
    if custom.get()
      select.custom = true
    else
      select.custom = { $not: true }
    Monster.find(select, { sort: name: 1 })
  omittedFields: [
    'createdAt'
    'updatedAt'
  ]
  fields: [
    'abilities'
    'book'
    'cr'
    'hitDiceModifier'
    'passives'
    'actions'
    'reactions'
    'Lactions'
  ]

Template.adminMonsters.events
  'click .monster': (e) -> activeMonster.set $(e.currentTarget).data('id')