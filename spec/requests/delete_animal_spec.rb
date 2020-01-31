require 'rails_helper'

describe "delete an animal id", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 3)}

  before { get "/animals" }

  it 'returns correct information for animal at specific id' do
    # p 'OK'
    # get "/animals YESLDS 3 animals"
    # p "RSPEC: GET /animals JSON.parse(response.body).size = #{JSON.parse(response.body).size}"
    # p "RSPEC: GET_animal_spec: on /animals/#{Animal.all.first.id}, named #{Animal.all.first.name}. DELETE @ :id #{Animal.all.first.id}"

    delete "/animals/#{Animal.all.first.id}", params: { :id => "#{Animal.all.first.id}" }
    # p "RSPEC: GET_animal_spec: on /animals/#{Animal.all.first.id}, named #{Animal.all.first.name}. FIRST now @ #{Animal.all.first.id}"
    get "/animals"
    # p "RSPEC: GET /animals JSON.parse(response.body).size = #{JSON.parse(response.body).size}"
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
