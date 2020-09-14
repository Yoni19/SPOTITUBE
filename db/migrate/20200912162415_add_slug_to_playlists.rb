class AddSlugToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :slug, :string
    add_index :playlists, :slug, unique: true
  end
end
