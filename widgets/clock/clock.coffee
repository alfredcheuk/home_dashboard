class Dashing.Clock extends Dashing.Widget

  ready: ->
    setInterval(@startTime, 500)
    h = new Date().getHours()
    if h < 18 && h > 6 then $(@node).removeClass('night').addClass('day') else $(@node).removeClass('day').addClass('night')

  startTime: =>
    today = new Date()

    h = today.getHours()
    m = today.getMinutes()
    s = today.getSeconds()
    m = @formatTime(m)
    @set('time', h + ":" + m)
    @set('date', today.toDateString())

  formatTime: (i) ->
    if i < 10 then "0" + i else i
