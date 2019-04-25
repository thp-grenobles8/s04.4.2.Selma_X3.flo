class JoinTableStrollDog < ApplicationRecord
  belongs_to :dog
  belongs_to :stroll
  has_many :dogsitters, through: :stroll
end
