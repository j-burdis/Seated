class Vote < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :user_id, uniqueness: { scope: :review_id, message: "You can only vote once on a review" }
end
