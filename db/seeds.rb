# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "Pop", password: "password")
# User.create(username: "Damaris", password: "password")

#Message.create(body: "Hi I'm a new message", user: User.first)
Message.create(body: "Hi, nice to meet you!", user: User.last)
#Message.create(body: "Hi, I'm happy to be here!", user: 3)