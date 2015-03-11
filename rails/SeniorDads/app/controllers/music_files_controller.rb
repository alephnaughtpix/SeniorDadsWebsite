class MusicFilesController < ApplicationController

  def index
    render :default
  end

  def default
    @music_files = MusicFile.all
  end

end
