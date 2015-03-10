class CreateDemoFileCollections < ActiveRecord::Migration
  def change
    create_table :demo_file_collections do |t|
      t.reference :demo
      t.references :site_files, index: true
      t.integer :order
      t.integer :type

      t.timestamps
    end
  end
end
