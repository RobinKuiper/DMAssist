campaignSlug = null

Template.turnOrderItem.onCreated ->
  campaignSlug = FlowRouter.getParam('slug')

Template.turnOrderItem.onRendered ->
  $('.input').popup()
  $('.button').popup()
  $('.label').popup()

  $('.addEffect').dropdown()

  ###if @.data.done
    $('#'+@.data.name+' .done').addClass('disabled')###

Template.turnOrderItem.events
  'click .remove.row': ->
    Meteor.call 'removeFromTurnOrder', campaignSlug, @

  'click .done': (e) ->
    # Set done on server
    Meteor.call 'setDone', campaignSlug, @
    if(!Campaign.findOne({ 'turnOrder.done': false }))
      campaign = Campaign.findOne { slug: campaignSlug }
      Meteor.call 'addTime', campaignSlug, campaign.settings.round+'S'
      Time.set Time.get()+campaign.settings.round
      Round.set Round.get()+1
      Meteor.call 'setDone', campaignSlug, 0, true

  'keyup input.name': (e) ->
    if e.keyCode == 13
      Meteor.call 'updateName', campaignSlug, @, e.target.value
      e.target.value = '' 
  'change input.name': (e) ->
    Meteor.call 'updateName', campaignSlug, @, e.target.value
    e.target.value = ''

  'keyup input.initiative': (e) ->
    if e.keyCode == 13
      Meteor.call 'updateInitiative', campaignSlug, @, e.target.value
      e.target.value = ''
  'change input.initiative': (e) ->
    Meteor.call 'updateInitiative', campaignSlug, @, e.target.value
    e.target.value = ''

  'keyup input.hp': (e) ->
    if e.keyCode == 13
      Meteor.call 'updateHP', campaignSlug, @, e.target.value
      e.target.value = ''
  'change input.hp': (e) ->
    Meteor.call 'updateHP', campaignSlug, @, e.target.value
    e.target.value = ''

  'click .rollInitiative': ->
    Meteor.call 'updateInitiative', campaignSlug, @, Utils.random.between(1,20)+if @.dexterity then @.dexterity else 0

  'click .increase.hp': ->
    Meteor.call 'updateHP', campaignSlug, @, 1

  'click .decrease.hp': ->
    Meteor.call 'updateHP', campaignSlug, @, -1

  'click .update.hp': ->
    self = @
    sweetAlert.withForm
      title: 'Increase/Decrease HP'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'hp', placeholder: 'Health' }
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'updateHP', campaignSlug, self, @.swalForm.hp

  'click .add.concentration': ->
    self = @
    sweetAlert.withForm
      title: 'Add Concentration'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'concentrationName', placeholder: 'Concentration Name' }
        { id: 'duration', placeholder: 'eg. 1H, 25M, 390S' }
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'addConcentration', campaignSlug, self, @.swalForm

  'click .add.buff': ->
    self = @
    sweetAlert.withForm
      title: 'Add Buff'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'buffName', placeholder: 'Buff Name' }
        { id: 'duration', placeholder: 'eg. 1H, 25M, 390S' }
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'addBuff', campaignSlug, self, @.swalForm

  'click .add.effect': ->
    self = @
    sweetAlert.withForm
      title: 'Add Effect'
      showCancelButton: true
      closeOnConfirm: true
      formFields: [
        { id: 'effect', type: 'select', options: [
          { value: 'Blinded', text: 'Blinded'}
          { value: 'Charmed', text: 'Charmed'}
          { value: 'Deafened', text: 'Deafened'}
          { value: 'Exhausted', text: 'Exhausted' }
          { value: 'Ethereal', text: 'Ethereal'}
          { value: 'Falling', text: 'Falling' }
          { value: 'Frightened', text: 'Frightened'}
          { value: 'Grappeled', text: 'Grappeled'}
          { value: 'Incapasitated', text: 'Incapasitated'}
          { value: 'Incorporeal', text: 'Incorporeal'}
          { value: 'Invisible', text: 'Invisible'}
          { value: 'Intoxicated', text: 'Intoxicated'}
          { value: 'Paralyzed', text: 'Paralyzed'}
          { value: 'Pertrified', text: 'Pertrified'}
          { value: 'Poisoned', text: 'Poisoned'}
          { value: 'Prone', text: 'Prone'}
          { value: 'Restrained', text: 'Restrained'}
          { value: 'Squeezing', text: 'Squeezing'}
          { value: 'Stable', text: 'Stable'}
          { value: 'Stunned', text: 'Stunned'}
          { value: 'Unconscious', text: 'Unconscious'}
        ]}
      ]
    , (confirm) ->
      if confirm
        Meteor.call 'addEffect', campaignSlug, self, @.swalForm.effect

  'click .remove.buff': (e) ->
    buffName = $(e.currentTarget).data('buff')
    Meteor.call 'removeBuff', campaignSlug, @, buffName

  'click .remove.effect': (e) ->
    effect = $(e.currentTarget).data('effect')
    Meteor.call 'removeEffect', campaignSlug, @, effect

  'click .remove.concentration': (e) ->
    Meteor.call 'removeConcentration', campaignSlug, @