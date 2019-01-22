class Vehicle < ApplicationRecord
  has_many :oil_changes, dependent: :destroy
  belongs_to :user
end
