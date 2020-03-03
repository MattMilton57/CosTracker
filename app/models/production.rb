class Production < ApplicationRecord
    has_many :productions_costumes
    has_many :costumes, through: :productions_costumes
    belongs_to :costume_designer
    belongs_to :theatre
end
