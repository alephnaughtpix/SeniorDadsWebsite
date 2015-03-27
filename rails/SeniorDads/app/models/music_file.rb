class MusicFile < ActiveRecord::Base
  belongs_to :main_file, :foreign_key => 'link_id', :class_name => "Link"
  
  def type 
    main_file.category
  end
  
end
