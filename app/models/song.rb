class Song < ActiveRecord::Base
  belongs_to :album  
  validates :title, :album_id, :presence => true
end
