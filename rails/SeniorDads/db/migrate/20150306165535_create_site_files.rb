class CreateSiteFiles < ActiveRecord::Migration
  def change
    create_table :site_files do |t|
      t.string :name
      t.string :url
      t.text :description
      t.references :site_file_type, index: true

      t.timestamps
    end
  end
end
