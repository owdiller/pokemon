class Pokeball < ActiveRecord::Base
  belongs_to :trainer
  belongs_to :character
end
