class AddForeignKeyToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :user, index: true
  end
end
