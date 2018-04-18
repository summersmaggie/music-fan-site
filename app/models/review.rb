class Review < ActiveRecord::Base
  belongs_to :album

  validates :username, :content, :album_id, :rating, :presence => true
end
