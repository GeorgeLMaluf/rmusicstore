class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title, limit: 50
      t.references :gender, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true
      t.references :tipo_media, null: false, foreign_key: true
      t.string :cover
      t.decimal :price

      t.timestamps
    end
  end
end
