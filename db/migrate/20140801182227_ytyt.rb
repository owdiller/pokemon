class Ytyt < ActiveRecord::Migration
  def change
    add_column :pokemontypes, :type_id, :integer
  end
end
