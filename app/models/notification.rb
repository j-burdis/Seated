class Notification < ApplicationRecord
  belongs_to :comment
  belongs_to :vote
  belongs_to :user
end
