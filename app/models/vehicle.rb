class Vehicle < ApplicationRecord
  has_many :oil_changes, dependent: :destroy
  belongs_to :user

  validates :nickname, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :mileage, presence: true
end
