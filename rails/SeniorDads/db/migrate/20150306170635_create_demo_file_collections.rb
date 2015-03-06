class CreateDemoFileCollections < ActiveRecord::Migration
  def change
    create_table :demo_file_collections do |t|
      t.references :demo, index: true
      t.references :site_file, index: true
      t.integer :order

      t.timestamps
    end
  end
end
