class CreatePokeballs < ActiveRecord::Migration
  def change
    create_table :pokeballs do |t|
      t.integer :trainer_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
