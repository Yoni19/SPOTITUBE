class CreateVideoPlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :video_playlists do |t|
      t.belongs_to :playlist, index: true
      t.belongs_to :video, index: true

      t.timestamps
    end
  end
end
