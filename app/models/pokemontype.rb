class Pokemontype < ActiveRecord::Base
  belongs_to :character
  belongs_to :type
end
