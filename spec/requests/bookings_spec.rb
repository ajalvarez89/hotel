require 'rails_helper'

RSpec.describe 'Booking endpoint', type: :request do
  describe 'GET /bookings' do 
    before {get '/bookings'}

    it 'should return OK' do 
      payload = JSON.parse(response.body)
      byebug
      expect(payload).not_to be_empty
      # expect(payload['api']).to eq('OK')
    end

    it 'should return status code 200' do 
      payload = JSON.parse(response.body)
      expect(response).to have_http_status(200)
    end
  end

  describe "be_truthy matcher" do
    it 'be_truthy matcher' do 
      expect(true).to be_truthy 
      expect(7).to be_truthy 
      expect("foo").to be_truthy 
      expect(nil).not_to be_truthy 
      expect(false).not_to be_truthy 
    
      # deliberate failures
      # expect(true).not_to be_truthy
      # expect(7).not_to be_truthy
      # expect("foo").not_to be_truthy
      # expect(nil).to be_truthy
      # expect(false).to be_truthy
    end
  end
end