class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :title
      t.string :url
      t.text :description
      t.references :category, index: true
      t.boolean :public, :default => true
      
      t.timestamps
    end
  end
end
