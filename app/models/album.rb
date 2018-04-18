class Album < ActiveRecord::Base
  has_many :songs

  validates :artist_name, :album_name, :genre, :presence => true
end
