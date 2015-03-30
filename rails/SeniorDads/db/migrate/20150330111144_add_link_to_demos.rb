class AddLinkToDemos < ActiveRecord::Migration
  def change
    add_reference :demos, :link, index: true
  end
end
