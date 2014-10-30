# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  # unix time
  robot.respond /([0-9]{10})/, (msg) ->
    time = parseInt(msg.match[1], 10)
    date = new Date(time * 1000) # ms
    msg.reply "#{date.getFullYear()}/#{date.getMonth()}/#{date.getDay()} #{date.getHours()}:#{date.getMinutes()}:#{date.getSeconds()}"
    # TODO %02d
