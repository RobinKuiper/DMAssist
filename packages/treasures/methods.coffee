Meteor.methods
  addTreasureToCampaign: (campaignSlug, treasure) ->
    Campaign.update { slug: campaignSlug, dm: @userId }, { $push: 'treasures': treasure}