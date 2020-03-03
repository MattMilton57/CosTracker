class Costume < ApplicationRecord
    has_many :productions_costumes
    has_many :productions, through: :productions_costumes
end
