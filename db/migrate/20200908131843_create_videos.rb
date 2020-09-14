class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :platform
      t.string :url
      t.belongs_to :playlist, index: true

      t.timestamps
    end
  end
end
