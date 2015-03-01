class CreateSiteFiles < ActiveRecord::Migration
  def change
    create_table :site_files do |t|
      t.string :name
      t.string :url
      t.integer :site_file_type_id

      t.timestamps
    end
  end
end
