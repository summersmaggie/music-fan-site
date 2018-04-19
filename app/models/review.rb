class Review < ActiveRecord::Base
  belongs_to :album

  validates :username, :content, :album_id, :rating, :presence => true

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10) }
end
