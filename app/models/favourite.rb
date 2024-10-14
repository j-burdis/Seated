class Favourite < ApplicationRecord
  belongs_to :cinema
  belongs_to :user

  validates :user_id, uniqueness: { scope: :cinema_id }
end
