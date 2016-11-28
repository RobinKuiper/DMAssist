@Encounter = new Mongo.Collection 'encounters'

Encounter.attachBehaviour('trackable')
Encounter.friendlySlugs 'name'

