class Favourite < ApplicationRecord
  belongs_to :cinema
  belongs_to :user
end
