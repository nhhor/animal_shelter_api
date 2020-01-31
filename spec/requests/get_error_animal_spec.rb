require 'rails_helper'

describe "get error on non existant animal route", :type => :request do
  # let!(:animals) { FactoryBot.create_list(:animal, 5)}

  before { get '/animals/98765'}

  it 'returns error for animal @ bad :id' do
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Animal with 'id'=98765")
  end

  it 'returns status code 404 Not Found' do
    expect(response).to have_http_status(:not_found)
  end
end
