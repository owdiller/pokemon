class Character < ActiveRecord::Base
  belongs_to :trainer
  has_many :types
end
