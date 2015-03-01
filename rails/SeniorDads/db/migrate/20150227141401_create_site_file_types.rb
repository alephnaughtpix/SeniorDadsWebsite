class CreateSiteFileTypes < ActiveRecord::Migration
  def change
    create_table :site_file_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
