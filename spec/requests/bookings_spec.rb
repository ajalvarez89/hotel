require 'rails_helper'

RSpec.describe BookingsController, :type => :controller do

  describe 'GET index' do 
    let(:bookings){BookingsController.new}
    
    before do
      bookings
    end

    it 'return all bookings' do
   
    end
  end

  describe "be_truthy matcher" do
    it 'be_truthy matcher' do 
      expect(true).to be_truthy 
      expect(7).to be_truthy 
      expect("foo").to be_truthy 
      expect(nil).not_to be_truthy 
      expect(false).not_to be_truthy 
    end
  end
end