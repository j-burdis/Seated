class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :comment, optional: true
  belongs_to :vote, optional: true

  validates :notification_type, presence: true
  validates :content, presence: true
  validates :read, inclusion: { in: [true, false] }
end
