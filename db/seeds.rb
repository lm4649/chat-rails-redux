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
