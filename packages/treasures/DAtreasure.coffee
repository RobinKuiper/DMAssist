treasure = new ReactiveVar null
hoard = new ReactiveVar false
i = 1
fields = 1
campaigns = []

Template.DAtreasure.onCreated ->
  Meteor.subscribe 'campaigns'

Template.DAtreasure.onRendered ->
  $('#toggleHoard').checkbox()
  $('.field').popup()

  @.autorun ->
    Campaign.find().forEach (campaign) ->
      campaigns.push { value: campaign.slug, text: campaign.name }

Template.DAtreasure.helpers
  treasure: -> treasure.get()
  hoard: -> hoard.get()
  hasCampaigns: -> Campaign.find().count() > 0
  schema: ->
    new SimpleSchema
      amount:
        type: Number
        allowedValues: [1...21]
        optional: true
      cr:
        type: Number
        allowedValues: [1, 6, 12, 18]
        autoform:
          options: [
            { label: '0-4', value: 1 }
            { label: '5-10', value: 6 }
            { label: '11-16', value: 12 }
            { label: '17+', value: 18 }
          ]
      percentage:
        type: Number
        optional: true
        allowedValues: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]
        autoform:
          options: [
            { label: '0%', value: 0 }
            { label: '10%', value: 10 }
            { label: '20%', value: 20 }
            { label: '30%', value: 30 }
            { label: '40%', value: 40 }
            { label: '50%', value: 50 }
            { label: '60%', value: 60 }
            { label: '70%', value: 70 }
            { label: '80%', value: 80 }
            { label: '90%', value: 90 }

          ]

Template.DAtreasure.events
  'click #saveButton': ->
    sweetAlert.withForm
      title: 'Name your treasure'
      confirmButtonText: 'Save'
      showCancelButton: true
      closeOnConfirm: false
      formFields: [
        { id: 'name', placeholder: 'Treasure Name' }
        { id: 'campaign', placeholder: 'Select Campaign', type: 'select', options: campaigns }
      ]
    , (confirm) ->
      if confirm
        t = Treasure.treasure
        t.name = @.swalForm.name
        Meteor.call 'addTreasureToCampaign', @.swalForm.campaign, t, ->
          Treasure.reset()
          treasure.set null
          sweetAlert 'Saved!', 'This treasure is saved in your campaign now!', 'success'
  'change #toggleHoard input': (e) -> hoard.set e.target.checked
  'click #addCR': ->
    selector = if fields == 1 then '#crFields' else '#crFields'+fields
    if i == 3
      fields++
      $(selector).after('<div id="crFields'+fields+'" class="fields"><div class="field"><label>CR:</label><select class="ui dropdown" name="cr[]"><option value="1">0-4</option><option value="6">5-10</option><option value="12">11-16</option><option value="18">17+</option></select></div></div>')
      i=0
    else
      $(selector).append('<div class="field"><label>CR:</label><select class="ui dropdown" name="cr[]"><option value="1">0-4</option><option value="6">5-10</option><option value="12">11-16</option><option value="18">17+</option></select></div>')
    i++

  'submit form': (e) ->
    e.preventDefault()

    rating = e.target.cr.value
    unless hoard.get()
      percentage = e.target.percentage.value
      amount = e.target.amount.value

    ratings = []
    _(if amount then amount else 1).times -> ratings.push rating*1

    treasure.set Treasure.generate(ratings, percentage, hoard.get())