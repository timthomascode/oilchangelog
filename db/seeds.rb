# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
#Vehicle.delete_all
#OilChange.delete_all

test_user = User.create!(email: "test@test.com", password: "password")
test2_user = User.create!(email: "test2@test.com", password: "password")

test_users_car = Vehicle.create!(user: test_user, nickname: "test's car", make: "test", model: "tester", mileage: 100)
test_users_car2 = Vehicle.create!(user: test_user, nickname: "test's second car", make: "test", model: "tester", mileage: 200)

test2_users_car = Vehicle.create!(user: test2_user, nickname: "test 2's car", make: "test", model: "tester", mileage: 100)
test2_users_car2 = Vehicle.create!(user: test2_user, nickname: "test 2's second car", make: "test", model: "tester", mileage: 200)

OilChange.create!(vehicle: test_users_car, date: Date.today, mileage: 50, oil_used: "castrol gtx 9000", notes: "metal shavings in oil")