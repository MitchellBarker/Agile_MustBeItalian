require 'rails_helper'

describe Chow do
    before :each do 
        @file = Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/text.csv'), 'text/csv')
    end
    
    it "should import .csv" do
        post :chow, :upload => @file
        response.should be_success
    end
    
    
end