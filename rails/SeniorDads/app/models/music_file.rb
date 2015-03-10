class MusicFile < ActiveRecord::Base
  belongs_to :site_file
  belongs_to :music_file_type
end
