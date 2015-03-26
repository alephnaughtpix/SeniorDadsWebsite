class Gallery < ActiveRecord::Base
  has_many :gallery_collections
  has_many :pictures, :through => :gallery_collections, :source => :site_file
end
