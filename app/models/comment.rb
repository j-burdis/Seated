class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user
  has_many :notifications, dependent: :destroy

  validates :content, presence: true, length: { minimum: 3, maximum: 140 }

  after_create_commit :broadcast_comment, :broadcast_comment_count
  after_destroy_commit :broadcast_comment_count

  after_create :notify_review_owner

  private

  def broadcast_comment
    broadcast_prepend_to "review_#{review.id}_comments",
                         target: "comments-#{review.id}",
                         partial: "comments/comment",
                         locals: { comment: self, user: self.user }
  end

  def broadcast_comment_count
    broadcast_replace_to "review_#{review.id}_comments",
                         target: "comment-count-#{review.id}",
                         partial: "comments/comment_count",
                         locals: { review: review }
  end

  def notify_review_owner
    return if user == review.user

    notification = Notification.create(
      user: review.user,
      comment: self,
      notification_type: 'comment',
      content: "#{user.username} commented on your review.",
      read: false
    )

    broadcast_replace_to(
      "notification_dot", review.user,
      target: "notification_dot_#{review.user.id}",
      partial: "notifications/notification_dot",
      locals: { user: review.user }
    )

    broadcast_prepend_later_to(
      "notifications_#{review.user.id}",
      target: "notifications-list",
      partial: "notifications/notification",
      locals: { notification: notification }
    )
  end
end
