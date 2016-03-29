# spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Internet.user_name }
    f.email { Faker::Internet.safe_email }
    # may want to generate one password and enter it twice
    f.password "pass1234"
    f.password_confirmation "pass1234"
  end
end