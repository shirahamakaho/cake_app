class CreateChaoers < ActiveRecord::Migration[6.1]
  def change
    create_table :chaoers do |t|
      t.references :user, foreign_key:true
      t.references :chao, foreign_key:true
      t.text :message

      t.timestamps
    end
  end
end
