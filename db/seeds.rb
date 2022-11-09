10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
end

Restaurant.all.each do |restaurant|
  rand(1..5).times do
    Review.create(
      rating: rand(0..5),
      content: Faker::JapaneseMedia::StudioGhibli.quote,
      restaurant: # restaurant, but rubocop tells me to omit it for good style...
    )
  end
end
