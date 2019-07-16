require 'rails_helper'

describe 'encrypts a message with a key' do
  it '/api/v1/encrypt without date' do
    get '/api/v1/encrypt?message=hello+world&key=12345'

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed[:data][:attributes][:encrypted_message].length).to eq(11)
  end
  #make test for encrypt with a date, then make decrypt with and without a date
end
