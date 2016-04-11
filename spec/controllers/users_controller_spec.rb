require 'rails_helper'

describe UsersController do
    before do
        load "#{Rails.root}/db/seeds.rb"
    end
    
    describe 'new' do
        before do
            get :new
        end
        
        it 'should make a defualt user' do
            assigns(:user).should_not == nil
        end
    end
    
    describe 'create' do
       before do
           get :create, {:user => nil}
       end
    end
end