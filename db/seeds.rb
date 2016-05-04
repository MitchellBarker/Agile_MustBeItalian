# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create!(first_name: "admin",
#              last_name: "admin",
#              email: "admin@fork-friendly.com",
#              password: "lindafriendly",
#              password_confirmation: "lindafriendly",
#              admin: true)

users = [{:first_name => 'admin', :last_name => 'admin', :email => 'admin@fork-friendly.com', :password => 'lindafriendly', :password_confirmation => 'lindafriendly', :admin => true},
        {:first_name => 'Willy', :last_name => 'Derby', :email => 'willyman_ina_can@mailman.com', :password => 'passw0rd', :password_confirmation => 'passw0rd'},
  	    {:first_name => 'Tonka', :last_name => 'Dan', :email => 'tonka_the_tank_engine@mailman.com', :password => 'passw0rd', :password_confirmation => 'passw0rd'},
  	    {:first_name => 'Ralphy', :last_name => 'Diddly', :email => 'diddly_do_dad@mailman.com', :password => 'passw0rd', :password_confirmation => 'passw0rd'},
  	    {:first_name => 'Gizmo', :last_name => 'Don', :email => 'ding_don@mailman.com', :password => 'passw0rd', :password_confirmation => 'passw0rd'},
  	    ]

users.each do |user|
  User.create!(user)
end