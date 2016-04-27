require 'spec_helper'

require 'sessions_helper'
describe SessionsHelper do
    describe "#login" do
        it "logs the user in" do
            # expect(StringCalculator.add("2,4")).to eql(6)
        end
    end
    
    describe "#logged_in?" do
        it 'l' do
            current_user = new User.new
            expect(current_user.nil?).to eq false
        end
    end
    
    describe "#log_out" do
        it "log the user out" do
            @current_user.should == nil
        end
    end
end