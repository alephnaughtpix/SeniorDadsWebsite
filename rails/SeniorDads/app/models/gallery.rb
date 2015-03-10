class Gallery < ActiveRecord::Base
  has_many :gallery_collections
  has_many :site_files, :through => :gallery_collections
end
