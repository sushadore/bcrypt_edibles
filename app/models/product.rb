class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :cost, presence: true, numericality: true
  validates :country_of_origin, presence: true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :most_reviews, -> {(
    select("products.*, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
    )}
end
