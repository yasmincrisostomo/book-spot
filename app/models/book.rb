class Book < ApplicationRecord
  CATEGORIES = %w[Romance Fiction Self-help Thriller Religion].freeze
  validates :author, :title, :category, :description, :price, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo
end
