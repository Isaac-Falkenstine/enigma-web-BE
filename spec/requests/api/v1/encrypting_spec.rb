require 'rails_helper'

describe 'encrypts a message with a key' do
  it '/api/v1/encrypt' do
    get '/api/v1/encrypt?message=hello+world&key=12345'

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end
end
