# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '== Installing Seeds =='
# add rooms
puts '***** Creating Rooms'
Room.create(number: '101', daily_rate: 50000)
Room.create(number: '102', daily_rate: 75000)
Room.create(number: '201', daily_rate: 55000)
Room.create(number: '202', daily_rate: 65000)
Room.create(number: '301', daily_rate: 80000)

# add customers
puts '***** Creating Users'
User.create(first_name: 'Alvaro', last_name: 'Alvarez', loyalty_member_tier: 'bronze')
User.create(first_name: 'Grecia', last_name: 'Contreras', loyalty_member_tier: 'silver')
User.create(first_name: 'Lady', last_name: 'Bernal', loyalty_member_tier: 'gold')

