class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.string :title
      t.string :platform
      t.float :size
      t.datetime :release_date
      t.references :gallery, index: true
      t.integer :order

      t.timestamps
    end
  end
end
