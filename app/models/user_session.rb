class UserSession < ActiveRecord::Base
  attr_accessible :address, :ip_address, :latitude, :longitude, :name
  
  geocoded_by :ip_address,
    :latitude => :lat, :longitude => :lon
  after_validation :geocode
  after_validation :ip_json
  require 'open-uri'
  require 'json'
  
  
  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)
    
    "http://gravatar.com/avatar/#{hash}"
  end
  
  
  
  def ip_json 
    client_json = JSON(open("http://freegeoip.net/json/#{remote_ip()}").read)
    client_json.city
  end
  
  
end
