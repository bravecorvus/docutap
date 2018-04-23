require 'open-uri'

class SearchController < ApplicationController
  def json
    uri = URI.parse(request.original_url)
    params = CGI.parse(uri.query)
    input = params['input'].first
    key = 'AIzaSyCCO0sJSlcDnI8VYEH57GYZ9_WQ2XPdiCU'
    render :json => JSON.load(open('https://maps.googleapis.com/maps/api/place/queryautocomplete/json?&key=' + key + '&input=' + input + '&types=(cities)'))
  end
end
