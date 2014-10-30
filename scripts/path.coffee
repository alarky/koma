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
  # path convert mac => win
  robot.hear /(smb:|cifs:|http:|https:)?\/\/[^\s]+/, (msg) ->
    path = msg.match[0]

    # http(s)は除外
    if (path[0..3] == "http")
      return

    # convert
    path = path.replace(/^(smb:|cifs:)/g, "")
    path = path.replace(/\//g, "\\")
    msg.send path

  # path convert win => mac 
  robot.hear /\\\\[^\s]+/, (msg) ->
    path = msg.match[0]

    # convert
    path = path.replace(/\\/g, "/")
    msg.send "cifs:#{path}"
