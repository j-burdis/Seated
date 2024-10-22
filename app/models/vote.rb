class Vote < ApplicationRecord
  belongs_to :review
  belongs_to :user
  has_many :notifications, dependent: :nullify

  validates :user_id, uniqueness: { scope: :review_id, message: "You can only vote once on a review" }

  after_create :notify_review_owner

  private

  def notify_review_owner
    Notification.create(
      user: review.user,
      vote: self,
      notification_type: 'vote',
      content: "#{user.username} upvoted your review.",
      read: false
    )
  end
end
