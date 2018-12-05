class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :average_rating, :authors, :number_of_ratings, :thumbnail, :date_published, :publisher, :subtitle, :page_count

  has_many :comments
  has_many :user_books
end
