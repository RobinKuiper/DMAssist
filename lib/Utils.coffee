@Utils = {}

Utils.regex = {}

Utils.regex.search = (s) -> s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&')

Utils.time = {}

Utils.time.toHHMMSS = (seconds) ->
  sec_num = parseInt(seconds, 10)
  days    = Math.floor(sec_num / 86400)
  hours   = Math.floor((sec_num - (days * 86400)) / 3600)
  minutes = Math.floor((sec_num - (days * 86400) - (hours * 3600)) / 60)
  seconds = sec_num - (days * 86400) - (hours * 3600) - (minutes * 60)

  if (days < 1)
    days = ''
  else
    days = days + 'D'
  if (hours   < 10)
    hours = "0"+hours
  if (minutes < 10)
    minutes = "0"+minutes
  if (seconds < 10)
    seconds = "0"+seconds
  time = days+' '+hours+':'+minutes+':'+seconds
  return time

Utils.time.toSeconds = (time) ->
  format = time.slice(-1)
  time = time.slice(0, -1)
  switch format
    when 'D', 'd' then seconds = time * 86400
    when 'H', 'h' then seconds = time * 3600
    when 'M', 'm' then seconds = time * 60
    when 'S', 's' then seconds = time
    else seconds = time

  return seconds

Utils.permissions = {}

Utils.permissions.hasPermission = (userId, permission, group) ->
  group = if group then group else 'global'
  return (Roles.userIsInRole(userId, 'admin') || Roles.userIsInRole(userId, permission, group))

Utils.calc = {}

Utils.calc.modifier = (score) ->
  return Math.floor((score-10)/2)

Utils.dice = {}
Utils.dice.d4 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d4()
  return total
Utils.dice.d6 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d6()
  return total
Utils.dice.d8 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d8()
  return total
Utils.dice.d10 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d10()
  return total
Utils.dice.d12 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d12()
  return total
Utils.dice.d20 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d20()
  return total
Utils.dice.d30 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d30()
  return total
Utils.dice.d100 = (times=1) ->
  total = 0
  for i in [0...times]
    total += chance.d100()
  return total


Utils.random = {}

Utils.random.between = (min, max, times=1) ->
  count = 0
  for i in [0...times]
    count += Math.floor(Math.random() * max) + min
  return count

Utils.image = {}
errors = {}

Utils.image.exists = (url, success, failure) ->
  img = new Image()
  loaded = false
  errored = false

  # Run only once, when `loaded` is false. If `success` is a
  # function, it is called with `img` as the context.
  img.onload = ->
    if (loaded)
      return

    loaded = true

    if (success && success.call)
      success.call(img)


  # Run only once, when `errored` is false. If `failure` is a
  # function, it is called with `img` as the context.
  img.onerror = ->
    if (errored)
      return

    errors[url] = errored = true

    if (failure && failure.call)
      failure.call(img)

  # If `url` is in the `errors` object, trigger the `onerror`
  # callback.
  if (errors[url])
    img.onerror.call(img)
    return false

  # Set the img src to trigger loading
  img.src = url

  # If the image is already complete (i.e. cached), trigger the
  # `onload` callback.
  if (img.complete)
    img.onload.call(img)