#!/bin/zsh

export HUBOT_HIPCHAT_JID="91685_1447313@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="y8WeL4dY26uS"
export HUBOT_HIPCHAT_ROOMS="91685_exercise@conf.hipchat.com"
export HUBOT_HEROKU_KEEPALIVE_URL="https://fierce-sands-3254.herokuapp.com/"
export HUBOT_HIPCHAT_JOIN_ROOMS_ON_INVITE=false
bin/hubot --adapter hipchat
