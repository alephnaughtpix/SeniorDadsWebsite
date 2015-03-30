class AddGalleryToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :gallery, index: true
  end
end
