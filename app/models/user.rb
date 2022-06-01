class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :books
  has_many :orders, dependent: :destroy
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
