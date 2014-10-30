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
  # 突然の死ジェネレーター
  robot.hear /^突然の.+$/, (msg) ->
    text = msg.message.text

    head = "＿人"
    for i in text
        head += "人"
    head += "人＿"

    content = "＞　#{text}　＜"

    foot = "￣Y"
    for i in text
        foot += "^Y"
    foot += "￣"
    msg.send "#{head}\n#{content}\n#{foot}"
  
  # ぬるぽ
  robot.hear /ぬるぽ/, (msg) ->
    msg.send "ｶﾞｯ>> @#{msg.message.user.name}"
