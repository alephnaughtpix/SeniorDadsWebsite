class Member < ActiveRecord::Base
  belongs_to :member_type
  belongs_to :site_file
end
