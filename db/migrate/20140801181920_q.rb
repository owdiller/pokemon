class Q < ActiveRecord::Migration
  def change
    remove_column :pokemontypes, :tpye_id, :integer
  end
end
