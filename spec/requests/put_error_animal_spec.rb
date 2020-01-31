require 'rails_helper'

describe "put to an animal route error handling", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3)}

  before { get "/animals/#{Animal.all.first.id}" }

  it 'updates incorrect information for animal at specific id' do
    # p 'OK'
    # p "RSPEC: PUT_animal_spec: on /animals/#{Animal.all.first.id}, a #{Animal.all.first.animal_type} named #{Animal.all.first.name}."
    put "/animals/#{Animal.all.first.id}", params: {:name => "", :animal_type => "Frog", :birthday => "1-1-99"}
    # p "RSPEC: PUT_animal_spec: on /animals/#{Animal.all.first.id}, a #{Animal.all.first.animal_type} named #{Animal.all.first.name}."
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Name can't be blank, Birthday only allows numbers in yyyy-mm-dd format")
  end

  it 'returns status code 404' do
    expect(response).to have_http_status(:success)
  end
end
