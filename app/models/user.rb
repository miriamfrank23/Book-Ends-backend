class User < ApplicationRecord
  has_many :comments
  has_many :books, through: :comments
end
