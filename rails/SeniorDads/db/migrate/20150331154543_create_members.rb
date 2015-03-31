class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.datetime :joined
      t.text :join_reason
      t.string :function
      t.string :first_computer
      t.string :any_other_comments
      t.references :gallery, index: true
      t.references :category, index: true
      t.integer :order

      t.timestamps
    end
  end
end
