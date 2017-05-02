class Demo < ActiveRecord::Base
  belongs_to :main_file, :foreign_key => 'link_id', :class_name => "Link"
  belongs_to :youtube_link, :foreign_key => 'youtube_link_id', :class_name => "Link"
  belongs_to :html5_link, :foreign_key => 'html5_link_id', :class_name => "Link"
  belongs_to :source_link, :foreign_key => 'source_link_id', :class_name => "Link"
  belongs_to :gallery
  has_many :demo_file_collections
  has_many :mirrors, :through => :demo_file_collections, :source => :link

  @@mirror_name = ["[m1Rr0R 1n3!!11]", "[m1Rr0R 2w0!!11]", "[m1Rr0R tHr33!!11]"]
  
  def self.mirror_name( index )
    @@mirror_name[ index ]
  end
  
  def release_date_formatted
  	ApplicationController.helpers.date_formatted(self.release_date)
  end
  
  def get_next_demo
    Demo.where("\"order\" > #{order}").order('"order"').first
  end 
  
  def get_next_name
    next_demo = get_next_demo
    (next_demo.nil?) ? nil : next_demo.name
  end 

end
