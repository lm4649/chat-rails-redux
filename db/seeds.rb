# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying messages, users and channels"

Message.destroy_all
User.destroy_all
Channel.destroy_all

puts "creating channel"

Channel.create!(name: 'general')
Channel.create!(name: 'tokyo')
Channel.create!(name: 'react')

puts "#{Channel.count} channels created"

puts "creating users"

User.create!(email: "marc@lewagon.com", password: 123456)
User.create!(email: "tierri@lewagon.com", password: 123456)

puts "#{User.count} users created"

User.all.each do |user|
  Channel.all.each do |channel|
    m = Message.new(content: "Thank you for accepting me in the #{channel.name} channel ;-)")
    m.user = user
    m.channel = channel
    m.save!
  end
end


puts "#{Message.count} Messages created"
