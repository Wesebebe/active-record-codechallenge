# puts "🌱 Seeding data..."

# # run a loop 20 times
# 20.times do
#   # create randomn user names
#   name = User.create(
#     name: Faker::Name.name,
#   )

#   product = Product.create(
#     product: Faker::Product.name,
#     price: rand(0..60) # random number between 0 and 60
#   )

#   # create between 1 and 5 reviews for each product
#   rand(1..5).times do
#     Review.create(
#       star_rating: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       product_id: product.id, # use the ID (primary key) of the product as the foreign key
#       user_id: user.id
#     )
#   end
# end

# puts "🌱 Done seeding!"


# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
user4 = User.create(name: Faker::Name.name)
user5 = User.create(name: Faker::Name.name)
user6 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Shoe rack", price: 10)
product2 = Product.create(name: "Coffee maker", price: 15)
product3 = Product.create(name: "Electric kettle", price: 5)
product4 = Product.create(name: "Cooking pan", price: 2)
product5 = Product.create(name: "Wine glasses", price: 3)

puts "Creating reviews..."

Review.create(comment:"Very good", star_rating: 5, user_id: user1.id, product_id: product1.id)
Review.create(comment:"5 stars", star_rating: 2, user_id: user2.id, product_id: product3.id)
Review.create(comment:"Great", star_rating: 4, user_id: user3.id, product_id: product2.id)
Review.create(comment:"Best", star_rating: 5, user_id: user4.id, product_id: product2.id)
Review.create(comment:"Never worked", star_rating: 1, user_id: user6.id, product_id: product1.id)
Review.create(comment:"Average", star_rating: 4, user_id: user1.id, product_id: product4.id)
Review.create(comment:"Loved it!", star_rating: 5, user_id: user5.id, product_id: product5.id)
puts "Seeding done!"