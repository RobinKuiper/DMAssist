Template.registerHelper 'getDisplayName', (userId) ->
  Meteor.users.findOne(userId).profile.name

Template.registerHelper 'formatTime', (time) ->
  Utils.time.toHHMMSS(time)

Template.registerHelper 'formatDateWithTime', (date) ->
  moment(date).format('DD/MM/YYYY HH:mm')

Template.registerHelper 'formatDate', (date) ->
  moment(date).format('DD/MM/YYYY')

Template.registerHelper 'formatCR', (CR) ->
  switch CR
    when 0.125 then return '1/8'
    when 0.25 then return '1/4'
    when 0.5 then return '1/2'
    else return CR

Template.registerHelper 'CRtoXP', (CR) ->
  switch CR
    when 0 then return 10
    when 0.125 then return 25
    when 0.25 then return 50
    when 0.5 then return 100
    when 1 then return 200
    when 2 then return 450
    when 3 then return 700
    when 4 then return '1.100'
    when 5 then return '1.800'
    when 6 then return '2.300'
    when 7 then return '2.900'
    when 8 then return '3.900'
    when 9 then return '5.000'
    when 10 then return '5.900'
    when 11 then return '7.200'
    when 12 then return '8.400'
    when 13 then return '1.0000'
    when 14 then return '11.500'
    when 15 then return '13.000'
    when 16 then return '15.000'
    when 17 then return '18.000'
    when 18 then return '20.000'
    when 19 then return '22.000'
    when 20 then return '25.000'
    when 21 then return '33.000'
    when 22 then return '41.000'
    when 23 then return '50.000'
    when 24 then return '62.000'
    when 25 then return '75.000'
    when 26 then return '90.000'
    when 27 then return '105.000'
    when 28 then return '120.000'
    when 29 then return '135.000'
    when 30 then return '155.000'

Template.registerHelper 'calcModifier', (score) ->
  mod = Utils.calc.modifier(score)
  return if mod > 0 then '+' + mod else mod

Template.registerHelper 'countArray', (array) -> array.length

Template.registerHelper 'isAdmin', -> Utils.permissions.hasPermission(Meteor.user()._id, 'view-admin')

#Template.registerHelper 'hasPermission', (permission, group) ->
#  Utils.permissions.hasPermission(Meteor.user()._id, permission, group)