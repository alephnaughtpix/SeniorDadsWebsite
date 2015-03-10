class CreateSiteFileTypes < ActiveRecord::Migration
  def change
    create_table :site_file_types do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
