require 'faker'

Album.destroy_all
Song.destroy_all
Review.destroy_all

25.times do |index|
  @album = Album.create!(artist_name: Faker::Name.last_name,
                          album_name: Faker::HeyArnold.location,
                          genre: Faker::Space.nebula)
  10.times do
    Song.create!(title: Faker::Friends.character,
                  album_id: @album.id)
  end
  1.times do
    Review.create!(username: Faker::Friends.character,
                  content: Faker::Friends.quote,
                  rating: Faker::Number.between(1, 5),
                  album_id: @album.id)
  end
end

p "Created #{Album.count} albums"
p "Created #{Song.count} songs"
p "Created #{Review.count} reviews"
