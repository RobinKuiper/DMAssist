profileSection = FlowRouter.group
  prefix: '/profile'

profileSection.route '/',
  name: 'profile'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'profileLayout', area: 'profileInfo' }

profileSection.route '/avatar',
  name: 'profileAvatar'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'profileLayout', area: 'profileAvatar' }

profileSection.route '/password',
  name: 'profilePassword'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'profileLayout', area: 'profilePassword' }