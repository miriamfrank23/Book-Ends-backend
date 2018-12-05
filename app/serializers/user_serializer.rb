class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email

  has_many :comments
  has_many :user_books
  has_many :wish_books

end
