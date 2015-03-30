class AddCategoryToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :category, index: true
  end
end
