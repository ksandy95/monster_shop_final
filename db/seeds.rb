# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


megan = Merchant.create!(name: 'Megans Marmalades', address: '123 Main St', city: 'Denver', state: 'CO', zip: 80218)
brian = Merchant.create!(name: 'Brians Bagels', address: '125 Main St', city: 'Denver', state: 'CO', zip: 80218)
megan.items.create!(name: 'Ogre', description: "I'm an Ogre!", price: 20, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaLM_vbg2Rh-mZ-B4t-RSU9AmSfEEq_SN9xPP_qrA2I6Ftq_D9Qw', active: true, inventory: 5 )
megan.items.create!(name: 'Giant', description: "I'm a Giant!", price: 50, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaLM_vbg2Rh-mZ-B4t-RSU9AmSfEEq_SN9xPP_qrA2I6Ftq_D9Qw', active: true, inventory: 3 )
brian.items.create!(name: 'Hippo', description: "I'm a Hippo!", price: 50, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaLM_vbg2Rh-mZ-B4t-RSU9AmSfEEq_SN9xPP_qrA2I6Ftq_D9Qw', active: true, inventory: 3 )


user = User.create!(name: 'Megan', email: 'megan@example.com', password: 'securepassword')
user_address = user.addresses.create!(address: '123 Main St', city: 'Denver', state: 'CO', zip: 80218, nickname: "Home")
user_address_2 = user.addresses.create!(address: '123 Iguana Way', city: 'Miami', state: 'FL', zip: 34109, nickname: "School")

user_2 = User.create!(name: 'Megan', email: 'megan@example.com', password: 'securepassword')
user_2_address = user_2.addresses.create!(address: '123 Main St', city: 'Denver', state: 'CO', zip: 80218, nickname: "Home")
user_2_address_2 = user_2.addresses.create!(address: '123 Iguana Way', city: 'Miami', state: 'FL', zip: 34109, nickname: "School")


user_3 = User.create!(name: 'Megan', email: 'megan@example.com', password: 'securepassword')
user_3_address = user_3.addresses.create!(address: '123 Main St', city: 'Denver', state: 'CO', zip: 80218, nickname: "Home")
user_3_address_2 = user_3.addresses.create!(address: '123 Iguana Way', city: 'Miami', state: 'FL', zip: 34109, nickname: "School")


order_1 = user.orders.create!(status: "pending", address_id: user_address.id)
order_2 = user.orders.create!(status: "pending", address_id: user_address_2.id)
order_item_1 = order_1.order_items.create!(item: hippo, price: hippo.price, quantity: 2, fulfilled: false)
order_item_2 = order_2.order_items.create!(item: hippo, price: hippo.price, quantity: 2, fulfilled: true)
order_item_3 = order_2.order_items.create!(item: ogre, price: ogre.price, quantity: 2, fulfilled: false)
order_item_4 = order_2.order_items.create!(item: giant, price: giant.price, quantity: 2, fulfilled: false)


order_3 = user_2.orders.create!(status: "pending", address_id: user_2_address.id)
order_4 = user_2.orders.create!(status: "pending", address_id: user_2_address_2.id)
order_item_5 = order_3.order_items.create!(item: hippo, price: hippo.price, quantity: 2, fulfilled: false)
order_item_6 = order_4.order_items.create!(item: hippo, price: hippo.price, quantity: 2, fulfilled: true)
order_item_7 = order_3.order_items.create!(item: ogre, price: ogre.price, quantity: 2, fulfilled: false)
order_item_8 = order_4.order_items.create!(item: giant, price: giant.price, quantity: 2, fulfilled: false)
