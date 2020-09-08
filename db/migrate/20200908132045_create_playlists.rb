class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :description
      t.boolean :private_mode
      t.boolean :collaborative_mode
      t.references :owner, index: true

      t.timestamps
    end
  end
end
