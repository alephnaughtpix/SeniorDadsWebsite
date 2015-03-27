class MusicFilesController < ApplicationController

  def index
    render :default
  end

  def default
    @music_files = MusicFile.all
    @updated_date = @music_files.sort_by{ |h| -h.updated_at.to_i }.first.updated_at
  end

end
