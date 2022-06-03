class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :name, :card_number, :card_code, :card_expiration, presence: true
  # validates_format_of :card_expiration, :with => { (0[1-9]|10|11|12)/20[0-9]{2}$ }
end
