class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :content, presence: true, length: { minimum: 10, maximum: 140 }
end
