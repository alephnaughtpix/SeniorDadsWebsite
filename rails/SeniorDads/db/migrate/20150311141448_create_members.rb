class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.datetime :joined
      t.text :join_reason
      t.text :function
      t.string :first_computer
      t.text :any_other_comments

      t.timestamps
    end
  end
end
