class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/tours' do
    tours = Tour.all
    tours.to_json
  end

  get '/guides' do
    guides = Guide.all
    guides.to_json
  end

  get '/addons' do
    addons = Addon.all
    addons.to_json
  end
  
  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  get '/locations' do
    locations = Location.all
    locations.to_json
  end
  
end
