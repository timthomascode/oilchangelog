require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  let (:test_user) { User.new(email: "test@testing.com", password: "password") }

  it "is invalid without a make" do
    vehicle = Vehicle.new(nickname: "Test Car", model: "Civic", mileage: 0, user: test_user)
    expect(vehicle).to_not be_valid
  end

  it "is invalid without a nickname" do
    vehicle = Vehicle.new(make: "Honda", model: "Civic", mileage: 0, user: test_user)
    expect(vehicle).to_not be_valid
  end

  it "is invalid without a model" do
    vehicle = Vehicle.new(nickname: "Test Car", make: "Honda", mileage: 0, user: test_user)
    expect(vehicle).to_not be_valid
  end

  it "is invalid without a user" do
    vehicle = Vehicle.new(nickname: "Test Car", make: "Honda", model: "Civic", mileage: 0)
    expect(vehicle).to_not be_valid
  end

  it "is invalid without a mileage" do
    vehicle = Vehicle.new(nickname: "Test Car", make: "Honda", model: "Civic", user: test_user)
    expect(vehicle).to_not be_valid
  end
end
