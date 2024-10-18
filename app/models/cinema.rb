class Cinema < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favourites

  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true
  validates :description, presence: true
  validates :average_rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, allow_nil: true }
  # validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_blank: true }

    # def average_rating
  #   reviews.average(:rating).to_f.round(2) || 0.0
  # end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :search_by_name_and_address,
    against: [ :name, :address ],
    using: {
      tsearch: { prefix: true },
      trigram: { threshold: 0.1 }
    }
end
