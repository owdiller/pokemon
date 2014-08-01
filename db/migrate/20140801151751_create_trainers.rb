class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :img
      t.integer :trainer_id

      t.timestamps
    end
  end
end
