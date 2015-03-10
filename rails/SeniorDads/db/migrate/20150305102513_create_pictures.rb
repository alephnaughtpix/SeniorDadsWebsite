class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.references :site_file, index: true

      t.timestamps
    end
  end
end
