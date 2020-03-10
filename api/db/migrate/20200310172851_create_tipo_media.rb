class CreateTipoMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_media do |t|
      t.string :description, limit: 50

      t.timestamps
    end
  end
end
