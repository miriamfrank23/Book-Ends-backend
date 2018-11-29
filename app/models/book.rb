class Book < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments

  # self.per_page = 20

end
