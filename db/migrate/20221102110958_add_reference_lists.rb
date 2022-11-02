class AddReferenceLists < ActiveRecord::Migration[6.1]
  def change
    add_reference :lists, :user, foreign_key:true
    add_reference :lists, :chao, foreign_key:true
  end
end
