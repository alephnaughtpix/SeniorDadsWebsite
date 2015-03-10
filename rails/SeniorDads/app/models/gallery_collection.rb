class GalleryCollection < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :site_file
end
