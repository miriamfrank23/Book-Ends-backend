class AddColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :authors, :string, array: true, default: []
  end
end
