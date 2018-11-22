class AddThumbnailToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :thumbnail, :string
  end
end
