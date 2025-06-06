class Vote < ApplicationRecord
  belongs_to :review
  belongs_to :user
  has_many :notifications, dependent: :destroy

  validates :user_id, uniqueness: { scope: :review_id, message: "You can only vote once on a review" }

  after_create :notify_review_owner

  private

  def notify_review_owner # rubocop:disable Metrics/MethodLength
    return if user == review.user || Notification.exists?(user: review.user, vote_id: self.id)

    notification = Notification.create(
      user: review.user,
      vote_id: self.id,
      notification_type: 'vote',
      content: "#{user.username} upvoted your review.",
      read: false
    )

    broadcast_replace_to(
      "notification_dot", review.user,
      target: "notification_dot_#{review.user.id}",
      partial: "notifications/notification_dot",
      locals: { user: review.user }
    )

    broadcast_prepend_later_to(
    # broadcast_replace_to(
      "notifications_#{review.user.id}",
      target: "notifications-list",
      partial: "notifications/notification",
      locals: { notification: notification }
    )
  end
end
