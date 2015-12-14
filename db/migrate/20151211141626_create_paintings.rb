class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.integer :artist_id
      t.string :title
      t.string :img_url
      t.integer :year_made

      t.timestamps null: false
    end
  end
end
