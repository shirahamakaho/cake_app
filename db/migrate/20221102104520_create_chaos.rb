class CreateChaos < ActiveRecord::Migration[6.1]
  def change
    create_table :chaos do |t|
      t.string :name

      t.timestamps
    end
  end
end
