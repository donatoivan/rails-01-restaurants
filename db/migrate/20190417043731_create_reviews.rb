class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :rating
      t.belongs_to :restaurant, index: true

      t.timestamps
    end
  end
end
