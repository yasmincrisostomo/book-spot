class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, :name, presence: true

  has_many :books, through: :orders
  has_many :orders, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
