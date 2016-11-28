Template.adminHome.helpers
  campaignCount: -> Campaign.find().count()
  userCount: -> Meteor.users.find().count()
  monsterCount: -> Monster.find({ custom: $not: true }).count()
  customMonsterCount: -> Monster.find({ custom: true }).count()
  encounterCount: -> Encounter.find().count()