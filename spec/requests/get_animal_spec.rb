require 'rails_helper'

describe "get an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3)}

  before { get "/animals/#{Animal.all.first.id}" }

  it 'returns correct information for animal at specific id' do
    # p 'OK'
    # p "RSPEC: GET_animal_spec: on /animals/#{Animal.all.first.id}, named #{Animal.all.first.name}."
    expect(JSON.parse(response.body)['name']).to eq(Animal.all.first.name)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
