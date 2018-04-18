require 'rails_helper'

describe Album do
  it {should validate_presence_of :artist_name}
  it {should validate_presence_of :album_name}
  it {should validate_presence_of :genre }
end
