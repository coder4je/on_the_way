# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts("Delete all old data")
Admin.destroy_all
Vender.destroy_all
Driver.destroy_all
Receiver.destroy_all
Material.destroy_all
Order.destroy_all
Schedule.destroy_all
Delivery.destroy_all


puts("Seed admin")
10.times do
  Admin.create(
    email: Faker::Internet.email,
    password: Faker::Code.nric,
  )
end

puts("Seed vender")
10.times do
  Vender.create(
    email: Faker::Internet.email,
    password: Faker::Code.nric,
    category: Faker::Commerce.vendor,
    location: Faker::Address.state,
  )
end

puts("Seed driver")
10.times do
  Driver.create(
    email: Faker::Internet.email,
    password: Faker::Code.nric,
  )
end

puts("Seed Receiver")
10.times do
  Receiver.create(
    email: Faker::Internet.email,
    password: Faker::Code.nric,
    location: Faker::Address.state,
  )
end

puts("Seed Order")
10.times do
  Order.create(
    name: Faker::Company.industry,
  )
end

puts("Seed Delivery")
10.times do
  Delivery.create(
    name: Faker::Commerce.department,
    admin_id: Admin.all.sample.id,
    order_id: Order.all.sample.id,
    vender_id: Vender.all.sample.id,
  )
end

puts("Seed Material")
10.times do
  Material.create(
    name: Faker::Commerce.material,
    vender_id: Vender.all.sample.id,
    receiver_id: Receiver.all.sample.id,
    driver_id: Driver.all.sample.id,
  )
end

puts("Seed Schedule")
10.times do
  Schedule.create(
    name: Faker::Commerce.department,
    material_id: Material.all.sample.id,
  )
end


puts("Seed Done")