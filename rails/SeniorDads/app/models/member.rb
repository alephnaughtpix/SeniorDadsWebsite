class Member < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :category
end
