class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.float :average_rating
      t.string :authors
      t.integer :number_of_ratings

      t.timestamps
    end
  end
end
