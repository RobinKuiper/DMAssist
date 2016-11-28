Campaign.after.insert (userId, doc) ->
  turnorder = []
  for x, player of doc.players
    turnorder.push
      name: player.name
      level: player.level
      hp: player.hp
      ac: player.ac
      initiative: 0
      player: true
      done: false
  Campaign.update doc._id, { $set: turnOrder: turnorder }