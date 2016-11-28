@Campaign = new Mongo.Collection 'campaigns'

if Meteor.isClient
  Tracker.autorun ->
    if(Meteor.user() && (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'view-admin', 'global')))
      @CampaignPaginator = new Paginator Campaign

Campaign.attachBehaviour('trackable')

Campaign.friendlySlugs 'name'

schemas = {}

schemas.Campaign = new SimpleSchema
  dm:
    type: String
    autoValue: ->
      if @.isInsert
        @userId
  name:
    type: String
    label: 'Campaign Name'
  players:
    type: [Object]
  'players.$.name':
    type: String
    label: 'Player Name'
  'players.$.level':
    type: Number
    optional: true
  'players.$.hp':
    type: Number
    optional: true
    label: 'Hit Points'
  'players.$.ac':
    type: Number
    optional: true
    label: 'Armor Class'
  'players.$.buffs':
    type: [Object]
    optional: true
    autoValue: ->
      if @.isSet
        for i in [0...@.value.length]
          if @.value[i].duration <= 0
            @.value[i].duration = 0

        return @.value
  'players.$.buffs.$.buffName':
    type: String
  'players.$.buffs.$.duration':
    type: Number
  'players.$.effects':
    type: [String]
    optional: true
  'players.$.concentration':
    type: Object
    optional: true
  'players.$.concentration.concentrationName':
    type: String
  'players.$.concentration.duration':
    type: Number
  time:
    type: Number
    defaultValue: 0
  turnOrder:
    type: [Object]
    optional: true
  'turnOrder.$.name':
    type: String
    optional: true
  'turnOrder.$.level':
    type: Number
    decimal: true
    optional: true
  'turnOrder.$.number':
    type: Number
    optional: true
  'turnOrder.$.initiative':
    type: Number
  'turnOrder.$.hp':
    type: Number
    optional: true
  'turnOrder.$.ac':
    type: Number
    optional: true
  'turnOrder.$.dexterity':
    type: Number
    optional: true
  'turnOrder.$.player':
    type: Boolean
  'turnOrder.$.done':
    type: Boolean
    autoValue: ->
      if @.isInsert
        false
  'turnOrder.$.buffs':
    type: [Object]
    optional: true
    autoValue: ->
      if @.isSet
        for i in [0...@.value.length]
          if @.value[i].duration <= 0
            @.value[i].duration = 0

        return @.value
  'turnOrder.$.buffs.$.buffName':
    type: String
  'turnOrder.$.buffs.$.duration':
    type: Number
  'turnOrder.$.effects':
    type: [String]
    optional: true
  'turnOrder.$.concentration':
    type: Object
    optional: true
  'turnOrder.$.concentration.concentrationName':
    type: String
  'turnOrder.$.concentration.duration':
    type: Number
  settings:
    type: Object
  'settings.round':
    type: Number
    defaultValue: 6
    label: 'Round duration (seconds)'
  'settings.shortRest':
    type: String
    defaultValue: '1H'
    label: 'Short rest duration (25S, 30M, etc.)'
  'settings.longRest':
    type: String
    defaultValue: '8H'
    label: 'Long rest duration (25S, 30M, etc.)'
  treasures:
    type: [Object]
    optional: true
  'treasures.$.name':
    type: String
  'treasures.$.cp':
    type: Number
  'treasures.$.sp':
    type: Number
  'treasures.$.ep':
    type: Number
  'treasures.$.gp':
    type: Number
  'treasures.$.pp':
    type: Number
  'treasures.$.extra':
    type: Object
  'treasures.$.extra.gems':
    type: [String]
  'treasures.$.extra.art':
    type: [String]
  'treasures.$.extra.magicItems':
    type: [String]
  public:
    type: Object
  'public.code':
    type: Number
    autoValue: ->
      if @.isInsert
        faker.random.number()
  'public.settings':
    type: Object
  'public.settings.showHP':
    type: Boolean
    defaultValue: false
  'public.settings.showAC':
    type: Boolean
    defaultValue: false
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

Campaign.attachSchema schemas.Campaign

Campaign.allow
  insert: (userId, doc) -> (userId == doc.dm)
  update: (userId, doc) -> (userId == doc.dm)