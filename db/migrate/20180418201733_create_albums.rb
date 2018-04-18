class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.column :artist_name, :string
      t.column :album_name, :string
      t.column :genre, :string

      t.timestamps
    end
  end
end
