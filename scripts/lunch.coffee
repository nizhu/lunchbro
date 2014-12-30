yelp = require "yelp"
_    = require "lodash"

client = yelp.createClient
  consumer_key: 'ucFBYwcE8yFNwouxPvr60A',
  consumer_secret: 'Ppax0sh34DfbnSkQNKfd4E71ByU',
  token: 'BFy7Zfi4vnfS6RO8UaJPUeH5hV2ORX47',
  token_secret: 'kCgbJQBYqwzawTeFnEw-VYZdD6M'

module.exports = (robot) ->
  robot.respond /lunch (.*)/i, (msg) ->
    client.search
      term: msg.match[1].replace(' ', '+') + '+food'
      ll: '-33.8776, 151.2066'
      sort: 1
      radius_filter: 1500
      limit: 20
    , (err, data) ->
      if err
        msg.reply 'DATA NO GOOD'
        console.log err[0]
      else
        restaurant = _.sortBy data.businesses, (business) ->
          Math.random()*business.rating^2/(business.distance*10)
        msg.reply "U HAVE #{restaurant[0].name} TODAY - #{restaurant[0].url}"
