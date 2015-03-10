class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.string :title
      t.string :platform
      t.integer :size
      t.datetime :release_date
      t.references :site_file, index: true
      t.references :gallery, index: true
      t.integer :demo_order

      t.timestamps
    end
  end
end
