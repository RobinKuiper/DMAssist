campaignCount = new ReactiveVar null
monsterCount = new ReactiveVar null
myMonsterCount = new ReactiveVar null

Template.dashboard.onCreated ->
  @.autorun ->
    # We need 5 campaigns to show, but we need to know if there are more, so we subscribe to 6
    sub = Meteor.subscribe 'campaigns', 6
    if sub.ready()
      $('#campaigns').removeClass('loading')

  @.autorun ->
    monsterSub = Meteor.subscribe 'monsters', 6
    if monsterSub.ready()
      $('#monsters').removeClass('loading')

  @.autorun ->
    myMonsterSub = Meteor.subscribe 'myMonsters', 6
    if myMonsterSub.ready()
      $('#customMonsters').removeClass('loading')

  @.autorun ->
    campaignCount.set ReactiveMethod.call 'countCampaigns'
    monsterCount.set ReactiveMethod.call 'countMonsters'
    myMonsterCount.set ReactiveMethod.call 'countMyMonsters'

    if campaignCount.get() != undefined && monsterCount.get() != undefined
      $('#statistics').removeClass('loading')

Template.dashboard.onRendered ->
  $('.button').popup()
  $('.label').popup()
  $('.accordion').accordion()
  $('.login').dropdown()

  Adsense.add '#dashboardAdd', '2069055607'

Template.dashboard.helpers
  campaigns: ->
    campaigns = Campaign.find {}, { limit: 5, sort: createdAt: -1 }
    return if campaigns.count() > 0 then campaigns else false
  monsters: -> Monster.find {}, { limit: 5, sort: createdAt: -1 }
  customMonsters: ->
    if Meteor.user()
      Monster.find { userId: Meteor.user()._id }, { limit: 5, sort: createdAt: -1 }
  moreThenFiveCampaigns: -> Campaign.find().count() > 5
  moreThenFiveMonsters: -> Monster.find().count() > 5
  moreThenFiveCustomMonsters: ->
    if Meteor.user()
      Monster.find({ userId: Meteor.user()._id }).count() > 5

  countCampaigns: -> campaignCount.get()
  countMonsters: -> monsterCount.get()
  countCustomMonsters: -> myMonsterCount.get()