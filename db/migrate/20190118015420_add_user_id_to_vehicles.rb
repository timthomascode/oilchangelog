class AddUserIdToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_reference(:vehicles, :user)
  end
end
