class SiteFileType < ActiveRecord::Base

  def self.get( title )
    where("title = ?", title).first
  end

end
