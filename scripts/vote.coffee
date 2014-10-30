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
  # incr/decr
  robot.hear /([a-z0-9\._-]+)(\+\+|--)/, (msg) ->
    name = msg.match[1]
    operator = msg.match[2]

    votes = robot.brain.get('votes') or {}
    score = votes[name] or 0

    if operator == "++"
        incr_or_decr = "incr"
        score += 1
    else
        incr_or_decr = "decr"
        score -= 1

    votes[name] = score
    robot.brain.set('votes', votes)

    msg.send "#{incr_or_decr} #{name} (#{score})"
