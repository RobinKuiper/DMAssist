Meteor.startup ->
  Migrations.migrateTo(19)