# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronjob = new cronJob('0 0 * * * *', () =>
    envelope = room: "#general"
    robot.send envelope, "今、何時？ @alarky"
  )
  cronjob.start()
