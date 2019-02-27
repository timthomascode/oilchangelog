require 'rails_helper'

RSpec.describe OilChange, type: :model do
  # OilChange.new(date: Date.today, mileage: 100, oil_used: "Some Oil", notes: "Some Notes", vehicle: test_vehicle)
  let (:test_user) { User.new(email: "test@testing.com", password: "password") }
  let (:test_vehicle) {Vehicle.new(nickname: "Test Car", make: "Honda", model: "Civic", mileage: 0, user: test_user)}

  it "is invalid without a date" do
    oil_change = OilChange.new(mileage: 100, oil_used: "Some Oil", notes: "Some Notes", vehicle: test_vehicle)
    expect(oil_change).to_not be_valid   
  end

  it "is invalid without a mileage" do
    oil_change = OilChange.new(date: Date.today, oil_used: "Some Oil", notes: "Some Notes", vehicle: test_vehicle)
    expect(oil_change).to_not be_valid  
  end

  it "is invalid without an oil used" do
    oil_change = OilChange.new(date: Date.today, mileage: 100, notes: "Some Notes", vehicle: test_vehicle)
    expect(oil_change).to_not be_valid  
  end
end
