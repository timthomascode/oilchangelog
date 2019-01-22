class User < ApplicationRecord
  include Clearance::User
  has_many :vehicles, dependent: :destroy
end
