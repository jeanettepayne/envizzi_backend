# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wedding = Board.create(title: "Wedding Inspo")
career = Board.create(title: "Career Goals")
nursery = Board.create(title: "Nursery Vision")


dress = Item.create(name: "Hayley Paige", board_id: 1)
venue = Item.create(name: "Piedmont Room", board_id: 1)
photog = Item.create(name: "BritRaePhoto", board_id: 1)

job = Item.create(name: "Senior Developer", board_id: 2)
salary = Item.create(name: "$$$", board_id: 2)
style = Item.create(name: "Flexible/Balanced", 2)

crib = Item.create(name: "Fancy Crib", board_id: 3)
chair = Item.create(name: "Cool Glider", board_id: 3)
snoo = Item.create(name: "Snoo", board_id: 3)