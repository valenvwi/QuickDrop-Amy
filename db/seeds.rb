# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database"
Order.destroy_all
User.destroy_all


puts "creating customers"
uno = User.create!(name: "User", email: "user1@example.com", password: "123456")
dobby = User.create!(name: "Dobby", email: "dobby@example.com", password: "jU7#2kL$8@6!")
pedro = User.create!(name: "Pedro", email: "pedro@example.com", password: "jU7#2kL$8@6!")

puts "creating drivers"
peter = User.create!(name: "Peter", contact_phone: "123456789", email: "driver1@example.com", password: "234567", driver: true)
susan = User.create!(name: "Susan", contact_phone: "285351850", email: "driversusan@example.com", password: "234567", driver: true)

puts "creating orders"

Order.create!(item_description: "Please take good care of it", item_size: "small", status: "Completed", pickup_name: "Voldemort", pickup_address: "Bellerivestrasse 201, 8008 Zürich", pickup_longitude: 8.5575889, pickup_latitude: 47.3529757, pickup_contact_phone: "123123123", pickup_additional_detail: "As fast as possible", pickup_at: "2023-06-20 16:37:55", dropoff_name: "Harrry Potter", dropoff_address: "Seefeldquai, 8008 Zürich", dropoff_longitude: 8.5476859, dropoff_latitude: 47.3600701, dropoff_contact_phone: "321321321", dropoff_additional_detail: "ASAP", dropoff_at: "2023-06-05 16:55:55", price: 15, distance: 1.2, customer_id: uno.id, driver_id: peter.id )

Order.create!(item_description: "Full of love", item_size: "medium", pickup_name: "dobby", pickup_address: "Mythenquai 9, 8002 Zürich", pickup_longitude: 8.5367009, pickup_latitude: 47.3616995, pickup_contact_phone: "888888888", pickup_additional_detail: "Dont ring the bell", pickup_at: "2023-06-25 17:15:55", dropoff_name: "harry", dropoff_address: "Hofwiesenstrasse 370, 8050 Zürich", dropoff_longitude: 8.5447568, dropoff_latitude: 47.4112233, dropoff_contact_phone: "666666666", dropoff_additional_detail: "Please tell harry that I love him!", price: 20, distance: 2.8, customer_id: dobby.id, driver_id: peter.id )

Order.create!(item_size: "large", status: "Cancelled", pickup_name: "Bobo", pickup_address: "Weststrasse 196, 8003 Zürich", pickup_longitude: 8.5170696, pickup_latitude: 47.3749246, pickup_contact_phone: "7023301334", pickup_additional_detail: "None", pickup_at: "2023-06-25 17:20:55", dropoff_name: "Amy", dropoff_address: "Werdinsel 2, 8049 Zürich", dropoff_longitude: 8.4893188, dropoff_latitude: 47.3991001, dropoff_contact_phone: "909010101", dropoff_additional_detail: "None", price: 0, distance: 3.4, customer_id: pedro.id, driver_id: susan.id  )

Order.create!(item_description: "Danke viel mal", item_size: "medium", pickup_name: "uno", pickup_address: "Stefano- Franscini, Platz 5, 8049 Zürich", pickup_longitude: 8.5075425, pickup_latitude: 47.4086747, pickup_contact_phone: "888888888", pickup_additional_detail: "Alles gut", pickup_at: "2023-06-21 17:40:55", dropoff_name: "cinco", dropoff_address: "Werdinsel 2, 8049 Zürich", dropoff_longitude: 8.4893188, dropoff_latitude: 47.3991001, dropoff_contact_phone: "525251111", dropoff_additional_detail: "Door is unlock.", price: 35, distance: 5.1, customer_id: uno.id, driver_id: susan.id )

puts "done"
