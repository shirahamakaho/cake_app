class AddColumnLists < ActiveRecord::Migration[6.1]

  def up
    remove_column :lists, :body, :string
  end

  def down
    add_reference :lists, :user, foreign_key:true
    add_reference :lists, :chao, foreign_key:true
  end

end
