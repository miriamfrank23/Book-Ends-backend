class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :read_books

  has_many :comments

end
