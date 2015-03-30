class Demo < ActiveRecord::Base
  #belongs_to :main_file, :foreign_key => 'site_file_id', :class_name => "SiteFile"
  belongs_to :main_file, :foreign_key => 'link_id', :class_name => "Link"
  belongs_to :gallery
  has_many :demo_file_collections
  #has_many :mirrors, :through => :demo_file_collections, :source => :site_file
  has_many :mirrors, :through => :demo_file_collections, :source => :link

  @@mirror_name = ["[m1Rr0R 1n3!!11]", "[m1Rr0R 2w0!!11]", "[m1Rr0R tHr33!!11]"]
  
  def self.mirror_name( index )
    @@mirror_name[ index ]
  end
  
  def get_next_demo
    Demo.where("demo_order > #{demo_order}").order('demo_order').first
  end 
  
  def get_next_name
    next_demo = get_next_demo
    (next_demo.nil?) ? nil : next_demo.name
  end 

end
