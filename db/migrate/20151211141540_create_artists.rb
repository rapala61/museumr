class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :img_url
      t.string :nationality
      t.integer :birth_year
      t.string :description

      t.timestamps null: false
    end
  end
end
