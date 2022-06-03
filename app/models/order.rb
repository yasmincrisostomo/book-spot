class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :name, :card_number, :card_code, :card_expiration, presence: true
  validates :card_number, length: { is: 16 }
  validates :card_expiration, length: { is: 5 }
  validates :card_code, length: { is: 3 }
end
