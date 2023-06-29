class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
#   # Add your routes here
  # get "/dogs" do
  #   dogs = Dog.all.order(:name)
  #   dogs.to_json
  # end

  get '/dogs/:id/walks' do 
    dog = Dog.find(params[:id])
    # walks = dog.walks
    # walks.to_json
    dog.to_json(include: :walks)
  end

  post '/walks' do
    walk = Walk.create(
      location: params[:location],
      used_bathroom: params[:used_bathroom],
      duration_in_minutes: params[:duration_in_minutes],
      distance_in_miles: params[:distance_in_miles],
      medication_given: params[:medication_given],
      notes: params[:notes],
      dog_id: params[:dog_id]
    )
    walk.to_json
  end

  post '/dogs' do 
    dog = Dog.create(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      energy_level: params[:energy_level],
      medication: params[:medication]
    )
    dog.to_json
  end

  delete '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.destroy
    walk.to_json
  end


end
