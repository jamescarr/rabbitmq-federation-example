amqp = require 'amqp'

downStream = amqp.createConnection url:'amqp://guest:guest@localhost:25672'
upStream = amqp.createConnection url:'amqp://guest:guest@localhost:35672'
downStream.on 'ready', ->
  downStream.queue 'inbound', (q) ->
    q.bind 'my-exchange', '#'
    q.subscribe (msg, headers) ->
      console.log msg
      console.log headers

upStream.on 'ready', ->
  upStream.exchange 'my-exchange', {type: 'topic'}, (exch) ->
    options =
      contentType: 'application/json'

    exch.publish 'some.message', {something:'good'}, options 
