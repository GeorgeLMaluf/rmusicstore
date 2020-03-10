class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name, limit: 50

      t.timestamps
    end
  end
end
