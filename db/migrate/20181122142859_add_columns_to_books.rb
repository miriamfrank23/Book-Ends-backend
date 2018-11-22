class AddColumnsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :date_published, :string
    add_column :books, :publisher, :string
    add_column :books, :subtitle, :string
  end
end
