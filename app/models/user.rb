class User < ApplicationRecord
  has_many :comments
  has_many :books, through: :comments

  has_secure_password
  validates :first_name, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
