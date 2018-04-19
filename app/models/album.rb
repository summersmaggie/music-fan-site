class Album < ActiveRecord::Base
  has_many :songs
  has_many :reviews

  validates :artist_name, :album_name, :genre, :presence => true
  scope :alphabetize, -> { order('artist_name ASC')}
  scope :most_reviews, -> {(
    select("albums.id, albums.album_name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("albums.id")
    .order("reviews_count DESC")
    .limit(5))}
end
