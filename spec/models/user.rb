# spec/models/user.rb
require 'spec_helper'
require 'faker'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "has a valid email address format" do
    FactoryGirl.build(:user, email: "trash.path").should_not be_valid
  end
  it "has a valid email address length" do
    # Faker password treated as a random string generator
    FactoryGirl.build(:user, email: (Faker::Internet.password(250,250) + "@yahoo.com")).should_not be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end
  it "does not allow duplicate emails to register accounts" do
    email = Faker::Internet.safe_email
    FactoryGirl.create(:user, email: email)
    FactoryGirl.build(:user, email: email).should_not be_valid
  end
  it "has a valid password" do
    FactoryGirl.build(:user, password: "12345").should_not be_valid
  end
end