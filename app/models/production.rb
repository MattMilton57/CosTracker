class Production < ApplicationRecord
    has_many :production_costumes
    has_many :costumes, through: :production_costumes
    belongs_to :costume_designer
    belongs_to :theatre
end
