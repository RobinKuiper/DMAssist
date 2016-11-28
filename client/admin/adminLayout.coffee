Template.adminLayout.onCreated ->
  if Meteor.user() && Utils.permissions.hasPermission(Meteor.user()._id, 'view-admin')
    Meteor.subscribe 'adminCampaigns'
    Meteor.subscribe 'adminUsers'
    Meteor.subscribe 'adminEncounters'
    Meteor.subscribe 'monsters'
  else
    FlowRouter.go '/'

Template.adminLayout.onRendered ->
  $('#adminSidebar').sidebar({
  #context: '#content'
    closable: false
    dimPage: false
    transition: 'push'
    onShow: ->
      $('#adminPusher').animate({
        'width': '-=0px'
        'padding-left': '170px'
        'padding-right': '20px'
      })
    onHide: ->
      $('#adminPusher').animate({
        'width': '100%'
        'padding-left': '20px'
        'padding-right': '496px'
      })
  })