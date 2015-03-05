class Demo < ActiveRecord::Base
  belongs_to :site_file, :as => :main_file
  belongs_to :gallery
  has_many :demo_file_collections
  has_many :site_files, :through => :demo_file_collections, :as => :mirror_files
end
