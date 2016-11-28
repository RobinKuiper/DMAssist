Meteor.publish 'campaigns', (limit) ->
  Campaign.find { dm: @userId }, { limit: limit }

Meteor.publish 'campaign', (campaignSlug, code=false) ->
  if code
    Campaign.find { slug: campaignSlug, 'public.code': code*1 }
  else
    Campaign.find { dm: @userId, slug: campaignSlug }

### Monsters ###
Meteor.publish 'monsters', (limit) ->
  select = { public: { $ne: false }, moderated: { $ne: false } }
  Monster.find select, { limit: limit }

Meteor.publish 'myMonsters', (limit) ->
  Monster.find { custom: true, userId: if @userId then @userId else 'aap' }, { limit: limit }

Meteor.publish 'monster', (slug) ->
  Monster.find({ slug: slug })

Meteor.publish 'encounters', ->
  Encounter.find { userId: @userId }

### Users ###
Meteor.publish 'onlineUsers', ->
  Meteor.users.find { 'status.online': true }, { fields: 'status.online': 1 }

Meteor.publish 'avatars', ->
  Meteor.users.find {}, {
    fields:
      "services.twitter.profile_image_url_https": true
      "services.facebook.id": true
      "services.google.picture": true
      "services.github.username": true
      "services.instagram.profile_picture": true
      "services.linkedin.pictureUrl": true
  }

Meteor.publish 'profiles', ->
  Meteor.users.find {}, {
    fields:
      "profile": true
  }

# Admin Publications
Meteor.publish 'adminUsers', ->
  if Roles.userIsInRole(@userId, 'admin') || Roles.userIsInRole(@userId, 'view-admin', 'global')
    Meteor.users.find()

Meteor.publish 'adminCampaigns', ->
  if Roles.userIsInRole(@userId, 'admin') || Roles.userIsInRole(@userId, 'view-admin', 'global')
    Campaign.find()

Meteor.publish 'adminEncounters', ->
  if Roles.userIsInRole(@userId, 'admin') || Roles.userIsInRole(@userId, 'view-admin', 'global')
    Encounter.find()