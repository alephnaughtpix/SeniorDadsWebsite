class SiteFile < ActiveRecord::Base
  belongs_to :site_file_type
  has_many :gallery_collections
  has_many :galleries, :through => :gallery_collections
end
