class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :content, presence: true, length: { minimum: 3, maximum: 140 }

  after_create_commit :broadcast_comment

  private

  def broadcast_comment
    broadcast_append_to "review_#{review.id}_comments",
                        target: "comments-#{review.id}",
                        partial: "comments/comment",
                        locals: { comment: self, user: user }
  end
end
