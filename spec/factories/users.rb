# spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Internet.user_name }
    f.email { Faker::Internet.safe_email }
    # generate one password and enter it twice
    password = Faker::Internet.password
    f.password { password }
    f.password_confirmation { password }
  end
end