require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = 'WA8CC24lE4XQkrE2kI0zsA'
  config.consumer_secret    = '0kDJH5KnVuXLQ5Xxc2irTHvRU84Z7hmgVL1xwOl1Zs'
  config.oauth_token        = '2265270307-UtGpH96MvWMcjSyuwjum9Huwli1bIiUNBwaSJRJ'
  config.oauth_token_secret = 'Lj61e2vh5VeErRsSD0OLshuB2A0zseaqenBFfNCiYDUlX'
  config.auth_method        = :oauth
end

def get_statuses
  client = TweetStream::Client.new

  client.filter(
    {
      :follow => ['2265270307'],
      :track => ['clapforashley']
    }
  ) do |status|
    puts "#{status.text}"
  end

  client.on_enhance_your_calm do
    puts "shit blocked"
  end.on_status_withheld do
    puts "shit status withheld"
  end.on_error do |message|
    puts "#{message}"
  end
end

get_statuses

#test 2265270307
# itrans 472635917
# ashley 304067888