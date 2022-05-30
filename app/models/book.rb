class Book < ApplicationRecord
  validates :author, :title, :description, :price, :category, presence: true

  belongs_to :user
  has_one_attached :photo
end
