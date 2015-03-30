class AddLinkToGalleryCollections < ActiveRecord::Migration
  def change
    add_reference :gallery_collections, :link, index: true
  end
end
