class Album < ActiveRecord::Base
  has_many :songs
  has_many :reviews

  validates :artist_name, :album_name, :genre, :presence => true
end
