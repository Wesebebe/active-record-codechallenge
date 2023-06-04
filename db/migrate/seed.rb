puts "🌱 Seeding data..."

# run a loop 20 times
20.times do
  # create randomn user names
  name = User.create(
    name: Faker::Name.name,
  )

  product = Product.create(
    product: Faker::Product.name,
    price: rand(0..60) # random number between 0 and 60
  )

  # create between 1 and 5 reviews for each product
  rand(1..5).times do
    Review.create(
      star_rating: rand(1..10),
      comment: Faker::Lorem.sentence,
      product_id: product.id, # use the ID (primary key) of the product as the foreign key
      user_id: user.id
    )
  end
end

puts "🌱 Done seeding!"
