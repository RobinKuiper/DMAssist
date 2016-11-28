@Monster = new Mongo.Collection 'monsters'

if Meteor.isClient
  @MonsterPaginator = new Paginator Monster

Monster.friendlySlugs 'name'

schemas = {}

schemas.Monster = new SimpleSchema
  name:
    type: String
  userId:
    type: String
    optional: true
  custom:
    type: Boolean
    autoValue: ->
      if @userId
        true
  public:
    type: Boolean
    optional: true
    defaultValue: true
  moderated:
    type: Boolean
    autoValue: ->
      if @userId
        false
  experience:
    type: Number
    label: 'Experience'
    optional: true
  type:
    type: String
    allowedValues: [
      'aberration'
      'beast'
      'celestial'
      'construct'
      'dragon'
      'elemental'
      'fey'
      'fiend'
      'giant'
      'humanoid'
      'monstrosity'
      'ooze'
      'plant'
      'swarm of Tiny beasts'
      'undead'
    ]
  subtype:
    type: String
    optional: true
  size:
    type: String
    allowedValues: [
      'Tiny'
      'Small'
      'Medium'
      'Large'
      'Huge'
      'Gargantuan'
    ]
  alignment:
    type: String
    allowedValues: [
      'neutral'
      'lawful good'
      'neutral good'
      'chaotic good'
      'lawful neutral'
      'true neutral'
      'chaotic neutral'
      'lawful evil'
      'neutral evil'
      'chaotic evil'
      'unaligned'
      'any alignment'
      'any non-good alignment'
      'any evil alignment'
      'any non-lawful alignment'
      'any chaotic alignment'
    ]
  hit_points:
    type: Number
    label: 'Hit Points'
  hit_dice:
    type: String
    label: 'Hit Dice'
  armor_class:
    type: Number
    label: 'Armor Class'
    allowedValues: [0...31]
  strength:
    type: Number
  dexterity:
    type: Number
  constitution:
    type: Number
  intelligence:
    type: Number
  wisdom:
    type: Number
  charisma:
    type: Number
  strength_save:
    type: Number
    optional: true
  dexterity_save:
    type: Number
    optional: true
  constitution_save:
    type: Number
    optional: true
  intelligence_save:
    type: Number
    optional: true
  wisdom_save:
    type: Number
    optional: true
  charisma_save:
    type: Number
    optional: true
  acrobatics:
    type: Number
    optional: true
  animal_handling:
    type: Number
    optional: true
  arcana:
    type: Number
    optional: true
  athletics:
    type: Number
    optional: true
  deception:
    type: Number
    optional: true
  history:
    type: Number
    optional: true
  insight:
    type: Number
    optional: true
  intimidation:
    type: Number
    optional: true
  investigation:
    type: Number
    optional: true
  medicine:
    type: Number
    optional: true
  nature:
    type: Number
    optional: true
  perception:
    type: Number
    optional: true
  performance:
    type: Number
    optional: true
  persuasion:
    type: Number
    optional: true
  religion:
    type: Number
    optional: true
  sleight_of_hand:
    type: Number
    optional: true
  stealth:
    type: Number
    optional: true
  survival:
    type: Number
    optional: true
  damage_vulnerabilities:
    type: String
    optional: true
  damage_resistances:
    type: String
    optional: true
  damage_immunities:
    type: String
    optional: true
  condition_immunities:
    type: String
    optional: true
  speed:
    type: String
  senses:
    type: String
    optional: true
  languages:
    type: String
    optional: true
  challenge_rating:
    type: Number
    label: 'Challenge Rating'
    decimal: true
    allowedValues: [
      0.125
      0.25
      0.5
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      10
      11
      12
      13
      14
      15
      16
      17
      18
      19
      20
      21
      22
      23
      24
      25
      26
      27
      28
      29
      30
    ]
  special_abilities:
    type: [Object]
    optional: true
  'special_abilities.$.name':
    type: String
  'special_abilities.$.desc':
    type: String
  'special_abilities.$.attack_bonus':
    type: Number
    optional: true
  actions:
    type: [Object]
    optional: true
  'actions.$.name':
    type: String
  'actions.$.desc':
    type: String
  'actions.$.attack_bonus':
    type: Number
    optional: true
  'actions.$.damage_dice':
    type: String
    optional: true
  'actions.$.damage_bonus':
    type: Number
    optional: true
  reactions:
    type: [Object]
    optional: true
  'reactions.$.name':
    type: String
  'reactions.$.desc':
    type: String
  'reactions.$.attack_bonus':
    type: Number
    optional: true
  legendary_actions:
    type: [Object]
    optional: true
  'legendary_actions.$.name':
    type: String
  'legendary_actions.$.desc':
    type: String
  'legendary_actions.$.attack_bonus':
    type: Number
    optional: true
  'legendary_actions.$.damage_dice':
    type: String
    optional: true
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()

Monster.attachSchema schemas.Monster

Monster.allow
  insert: (userId, doc) ->
    if (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'monster-editor', 'global'))
      return true
    else if (userId == doc.userId && doc.custom)
      return true
    else
      return false
  update: (userId, doc) ->
    if (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'monster-editor', 'global'))
      return true
    else if (userId == doc.userId && doc.custom)
      return true
    else
      return false