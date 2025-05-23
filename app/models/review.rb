class Review < ApplicationRecord
  belongs_to :cinema
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many_attached :photos

  validates :screen, presence: true
  validates :seat, presence: true
  validates :content, presence: true, length: { minimum: 10, maximum: 140 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # validates :price

  # Optional: Validate that the user can only review a cinema once
  # validates :user_id, uniqueness: { scope: :cinema_id, message: 'You can only review a cinema once.' }

  after_save :update_cinema_average_rating
  after_destroy :update_cinema_average_rating

  private

  def update_cinema_average_rating
    cinema.update_average_rating
  end
end
