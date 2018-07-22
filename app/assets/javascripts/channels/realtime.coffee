App.realtime = App.cable.subscriptions.create "RealtimeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    #console.log("#{data.message}")
    $('#job-table').html("#{data.message}").hide().fadeIn(100)
