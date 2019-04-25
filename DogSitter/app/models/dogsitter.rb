class Dogsitter < ApplicationRecord
  has_many :strolls, dependent: :destroy
  has_many :join_table_stroll_dogs, through: :strolls, dependent: :destroy
  has_many :dogs, through: :join_table_stroll_dogs
  belongs_to :city
end
