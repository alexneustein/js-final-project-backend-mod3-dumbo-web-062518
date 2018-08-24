# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Channel.destroy_all
Message.destroy_all

# 10.times {
#   channel = Channel.create(name: Faker::GameOfThrones.house)
# }
#
# 50.times {
#   user = User.create(username: Faker::GameOfThrones.character )
# }
#
# 50.times {
#   message = Message.create(
#     content: Faker::GameOfThrones.quote,
#     user_id: Random.rand(50),
#     channel_id: Random.rand(40)
#   )
# }
#
#
#
#
#

# User.create(username: "runandre")
# Channel.create(name: "COOL!")
# Message.create(user_id: 1, channel_id: 1, content: "WELCOME!!")
