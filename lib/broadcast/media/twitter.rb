class Broadcast::Medium::Twitter < Broadcast::Medium::Oauth

  self.site = "http://api.twitter.com"

  def publish(message)
    token.post '/1/statuses/update.json', { :status => message.body }
  end

end
