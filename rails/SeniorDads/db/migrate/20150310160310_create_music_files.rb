class CreateMusicFiles < ActiveRecord::Migration
  def change
    create_table :music_files do |t|
      t.string :name
      t.string :title
      t.text :description
      t.references :site_file, index: true
      t.references :music_file_type, index: true

      t.timestamps
    end
  end
end
