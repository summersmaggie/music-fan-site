require 'faker'

Album.destroy_all

25.times do |index|
  Album.create!(artist_name: Faker::Name.last_name,
                album_name: Faker::HeyArnold.location,
                genre: Faker::Space.nebula)
end

p "Created #{Album.count} albums"
