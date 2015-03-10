class CreateGalleryCollections < ActiveRecord::Migration
  def change
    create_table :gallery_collections do |t|
      t.integer :gallery_id
      t.integer :site_file_id

      t.timestamps
    end
  end
end
