class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_picture
  has_many :reviews, dependent: :destroy
  has_many :cinemas, through: :reviews
  has_many :favourites, dependent: :destroy
  has_many :comments
  has_many :votes
  has_many :notifications, dependent: :destroy

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }

  def cinemas_by_highest_average_rating
    cinemas
      .select('cinemas.*, AVG(reviews.rating) as avg_rating')
      .joins(:reviews)
      .where('reviews.user_id = ?', self.id)
      .group('cinemas.id')
      .order('avg_rating DESC')
      .limit(3)
  end
end
