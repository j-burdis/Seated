class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user
  has_many :notifications, dependent: :nullify

  validates :content, presence: true, length: { minimum: 3, maximum: 140 }

  after_create_commit :broadcast_comment

  after_create :notify_review_owner

  private

  def broadcast_comment
    broadcast_append_to "review_#{review.id}_comments",
                        target: "comments-#{review.id}",
                        partial: "comments/comment",
                        locals: { comment: self, user: user }
  end

  def notify_review_owner
    Notification.create(
      user: review.user,
      comment: self,
      notification_type: 'comment',
      content: "#{user.username} commented on your review.",
      read: false
    )
  end
end
