class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_one_attached :profile_picture
  has_many :reviews, dependent: :destroy
  has_many :favourites
  # has_many :favourite_cinemas, through: :favourites, source: :cinema

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
end
