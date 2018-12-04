class RemoveReadBooksFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :read_books
  end
end
