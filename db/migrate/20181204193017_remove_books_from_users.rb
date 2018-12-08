class RemoveBooksFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :books
    rename_column :users, :wish_books, :read_books
  end
end
