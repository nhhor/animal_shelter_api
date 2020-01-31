require 'rails_helper'

describe "post error to the animal route", :type => :request do

  # before do
  #
  # end

  it 'returns correct error with no animal name' do
    post '/animals', params: { :name => "", :animal_type => "Frog", :breed => "Toad", :sex => "Male", :color => "green", :birthday => "2020-01-31", :notes => "He's charming" }
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Name can't be blank")
  end

  it 'returns correct error with no animal name' do
    post '/animals', params: { :name => "Prince", :animal_type => "Frog", :breed => "Toad", :sex => "Male", :color => "green", :birthday => "2020", :notes => "He's charming" }
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Birthday only allows numbers in yyyy-mm-dd format")
  end

  it 'returns a created status error message.' do
    post '/animals', params: { :name => "Prince", :animal_type => "Frog", :breed => "Toad", :sex => "Male", :color => "green", :birthday => "2020", :notes => "He's charming" }
    expect(response).to have_http_status(:not_found)
  end
  
end
