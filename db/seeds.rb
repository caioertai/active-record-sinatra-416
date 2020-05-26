# Initial state of the DB data
require "faker"

50.times do |n|
  restaurant = Restaurant.new(
    name: "#{Faker::GreekPhilosophers.name} #{Faker::GreekPhilosophers.name}",
    address: Faker::Address.full_address,
    rating: rand(1..5)
  )
  restaurant.save!
end
