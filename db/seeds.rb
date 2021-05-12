puts "Cleaning the database"
Flat.destroy_all

puts "Creating new flats..."

10.times do
  flat = Flat.create!(
    name: "#{Faker::Ancient.god} suit",
    address: Faker::Address.street_address,
    description: Faker::Quote.matz,
    price_per_night: rand(25..100),
    number_of_guests: rand(1..5)
  )
  puts "Flat #{flat.id} was created."
end

puts "All done!"
