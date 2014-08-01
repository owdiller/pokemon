class CreatePokemontypes < ActiveRecord::Migration
  def change
    create_table :pokemontypes do |t|
      t.integer :pokemon_id
      t.integer :tpye_id

      t.timestamps
    end
  end
end
