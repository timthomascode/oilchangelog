class OilChange < ApplicationRecord
  belongs_to :vehicle

  validates :date, presence: true
  validates :mileage, presence: true
  validates :oil_used, presence: true
end
