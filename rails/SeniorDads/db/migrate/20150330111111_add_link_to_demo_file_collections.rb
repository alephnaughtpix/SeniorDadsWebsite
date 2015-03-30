class AddLinkToDemoFileCollections < ActiveRecord::Migration
  def change
    add_reference :demo_file_collections, :link, index: true
  end
end
