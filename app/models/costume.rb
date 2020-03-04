class Costume < ApplicationRecord
    has_many :production_costumes
    has_many :productions, through: :production_costumes
end
