Template.body.onRendered ->
  $('.button').popup()

Template.mainLayout.onRendered ->
  $('#mainSidebar').sidebar({
    #context: '#content'
    closable: false
    dimPage: false
    transition: 'push'
    onShow: ->
      $('#mainPusher').animate({
        'width': '-=0px'
        'padding-left': '170px'
        'padding-right': '20px'
      })
    onHide: ->
      $('#mainPusher').animate({
        'width': '100%'
        'padding-left': '20px'
        'padding-right': '496px'
      })
  })
  #.sidebar('attach events', '#toggleSidebar')

  $('#encounterSidebar').sidebar({
    closable: false
    dimPage: false
    transition: 'push'
    onShow: ->
      $('#mainSidebar').sidebar('hide')
    onHide: ->
      $('#mainSidebar').sidebar('show')
  })