class AddLinkToMusicFiles < ActiveRecord::Migration
  def change
    add_reference :music_files, :link, index: true
  end
end
