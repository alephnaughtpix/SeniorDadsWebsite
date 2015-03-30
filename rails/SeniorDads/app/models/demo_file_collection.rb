class DemoFileCollection < ActiveRecord::Base
  belongs_to :demo
  belongs_to :link
end
