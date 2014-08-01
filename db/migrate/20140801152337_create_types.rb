class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :img
      t.integer :type_id

      t.timestamps
    end
  end
end
