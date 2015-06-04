# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Donation.destroy_all
Receipt.destroy_all
User.destroy_all

10.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.password = "password"
  user.email = Faker::Internet.safe_email("#{user.first_name} #{user.last_name}")
  user.username = Faker::Internet.user_name("#{user.first_name} #{user.last_name}", ["_"])
  user.street_address = Faker::Address.street_address
  user.city = Faker::Address.city
  user.state = Faker::Address.state_abbr
  user.zip = Faker::Address.zip
  user.save
end