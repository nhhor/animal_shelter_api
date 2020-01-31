require 'rails_helper'

describe "put to an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3)}

  before { get "/animals/#{Animal.all.first.id}" }

  it 'updates correct information for animal at specific id' do
    p 'OK'
    p "RSPEC: PUT_animal_spec: on /animals/#{Animal.all.first.id}, a #{Animal.all.first.animal_type} named #{Animal.all.first.name}."

    put "/animals/#{Animal.all.first.id}", params: {:animal_type => "Frog"}

    p "RSPEC: PUT_animal_spec: on /animals/#{Animal.all.first.id}, a #{Animal.all.first.animal_type} named #{Animal.all.first.name}."
    expect(JSON.parse(response.body)['message']).to eq("This animal has been updated successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
