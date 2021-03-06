class Category < ActiveRecord::Base
  
  belongs_to :parent, :class_name => "Category"
  has_many :children, :class_name => "Category", :foreign_key => 'parent_category_id'
  has_many :links
  
  def descendents
    children.map do |child|
      [child] + child.descendents
    end.flatten
  end

  def self_and_descendents
    [self] + descendents
  end
  
end
