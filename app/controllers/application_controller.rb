class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
#   # Add your routes here
  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get '/dogs/:id/walks' do 
    dog = Dog.find(params[:id])
    walks = dog.walks
    walks.to_json
  end

end
