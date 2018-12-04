class AddWishBooksToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wish_books, :string, array: true, default: []
  end
end
