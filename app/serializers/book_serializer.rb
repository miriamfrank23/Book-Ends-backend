class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :average_rating, :authors, :number_of_ratings
end
