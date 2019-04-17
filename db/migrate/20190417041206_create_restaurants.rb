class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :address
      t.string :description
      t.string :food_type

      t.timestamps
    end
  end
end
