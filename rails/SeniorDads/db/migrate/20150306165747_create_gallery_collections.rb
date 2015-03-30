class CreateGalleryCollections < ActiveRecord::Migration
  def change
    create_table :gallery_collections do |t|
      t.references :gallery, index: true

      t.timestamps
    end
  end
end
