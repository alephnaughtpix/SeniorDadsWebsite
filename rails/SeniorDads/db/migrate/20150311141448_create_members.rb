class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.references :member_type, index: true
      t.string :title
      t.datetime :joined
      t.text :join_reason
      t.text :function
      t.string :first_computer
      t.text :any_other_comments
      t.references :site_file, index: true

      t.timestamps
    end
  end
end
