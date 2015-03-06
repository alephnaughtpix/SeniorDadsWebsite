class CreateGalleryCollections < ActiveRecord::Migration
  def change
    create_table :gallery_collections do |t|
      t.references :gallery, index: true
      t.references :site_file, index: true

      t.timestamps
    end
  end
end
