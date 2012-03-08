require 'json'
require 'rest_client'

# Requires: rest_client (gem install rest-client)

class LmcApi

  def initialize(key, secret)
    @url = 'https://api.logmycalls.com/services'
    @auth = {  
      "api_key" => key,
      "api_secret" => secret
    }
  end
      
  # Deliver a json payload (data) to the enpoint and method (action)
  def post_json(data, action)
    response = RestClient.post "#{@url}/#{action}", data.merge(@auth).to_json, :content_type => :json, :accept => :json
    response.body
  end
  
  # Deliver a multipart post with a wav/mp3 to the uploadAudio method
  def post_media(data, action="uploadAudio")
  puts "#{@url}/#{action}"
    response = RestClient.post "#{@url}/#{action}", { 
        :audio => File.new(data.delete(:audio), 'rb'),
        :call_detail_id => data.delete(:call_detail_id)
      }.merge(data.merge(@auth)) 
    response.body
  end

end