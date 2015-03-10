class Demo < ActiveRecord::Base
  belongs_to :site_file
  belongs_to :gallery
  has_many :demo_file_collections
  has_many :site_files, :through => :demo_file_collections

  @@mirrorNames = ["[m1Rr0R 1n3!!11]", "[m1Rr0R 2w0!!11]", "[m1Rr0R tHr33!!11]"]

end
