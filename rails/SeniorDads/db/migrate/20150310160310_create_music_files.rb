class CreateMusicFiles < ActiveRecord::Migration
  def change
    create_table :music_files do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
