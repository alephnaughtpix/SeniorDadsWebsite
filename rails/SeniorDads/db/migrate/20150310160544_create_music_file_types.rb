class CreateMusicFileTypes < ActiveRecord::Migration
  def change
    create_table :music_file_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
