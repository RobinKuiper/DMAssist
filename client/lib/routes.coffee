FlowRouter.route '/',
  action: ->
    FlowRouter.go 'dashboard'

FlowRouter.route '/dashboard',
  name: 'dashboard'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'dashboard' }

FlowRouter.route '/about',
  name: 'about'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'about' }

FlowRouter.route '/donate',
  name: 'donate'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'donate' }

FlowRouter.route '/treasure',
  name: 'treasure'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'treasure' }

# MONSTER ROUTES
monsterSection = FlowRouter.group
  prefix: '/monsters'

monsterSection.route '/',
  name: 'monsterOverview'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'monsterOverview' }

monsterSection.route '/add',
  name: 'addMonster'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'monsterForm' }

monsterSection.route '/edit/:slug',
  name: 'editMonster'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'monsterForm' }

monsterSection.route '/mine',
  name: 'myMonsters'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'monsterOverview' }

monsterSection.route '/:slug',
  name: 'monster'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'monster' }

# CAMPAIGN ROUTES
campaignSection = FlowRouter.group
  prefix: '/campaigns'

campaignSection.route '/',
  name: 'campaignOverview'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'campaignOverview' }

campaignSection.route '/add',
  name: 'addCampaign'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'addCampaign' }

campaignSection.route '/:slug',
  name: 'campaign'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'campaign' }

campaignSection.route '/:slug/settings',
  name: 'campaignSettings'
  action: ->
    BlazeLayout.render 'mainLayout', { content: 'campaignSettings' }

campaignSection.route '/:slug/:code',
  name: 'campaignPublic'
  action: ->
    BlazeLayout.render 'publicLayout', { content: 'publicCampaign' }

# ADMIN ROUTES
adminSection = FlowRouter.group
  prefix: '/admin'

adminSection.route '/',
  name: 'adminDashboard'
  action: ->
    BlazeLayout.reset()
    BlazeLayout.render 'adminLayout', { content: 'adminHome' }

adminSection.route '/users',
  name: 'adminUsers'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'adminUsers' }

adminSection.route '/monsters',
  name: 'adminMonsters'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'adminMonsters' }

adminSection.route '/campaigns',
  name: 'adminCampaigns'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'adminCampaigns' }

adminSection.route '/monster/add',
  name: 'addMonster'
  action: ->
    BlazeLayout.render 'adminLayout', { content: 'addMonster' }