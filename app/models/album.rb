class Album < ActiveRecord::Base
  validates :artist_name, :album_name, :genre, :presence => true
end
