class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :ref
      t.string :name
      t.string :platform
      t.float :size
      t.datetime :release_date
      t.references :site_file, index: true
      t.references :gallery, index: true

      t.timestamps
    end
  end
end
