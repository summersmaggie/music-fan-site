require 'rails_helper'

describe "the action of adding an album to the database" do
  it "adds a new album to the database" do
    visit '/'
    click_link 'Add New Album'
    fill_in "album[artist_name]", :with => 'Britney Spears'
    fill_in 'album[album_name]', :with => 'Hit me one more time'
    fill_in 'album[genre]', :with => 'Pop'
    click_button 'Create Album'
    expect(page).to have_content 'Britney Spears'
  end
end
