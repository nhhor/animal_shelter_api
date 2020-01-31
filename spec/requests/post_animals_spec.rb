require 'rails_helper'

describe "post to the animal route", :type => :request do

  before do
    post '/animals', params: { :name => "Prince", :animal_type => "Frog", :breed => "Toad", :sex => "Male", :color => "green", :birthday => "2020-01-31", :notes => "He's charming" }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Prince')
  end

  it 'returns the animal birthday' do
    expect(JSON.parse(response.body)['birthday']).to eq('2020-01-31')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
