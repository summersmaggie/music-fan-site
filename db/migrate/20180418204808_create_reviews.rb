class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :username, :string
      t.column :content, :string
      t.column :album_id, :integer
      t.column :rating, :integer

      t.timestamps
    end
  end
end
