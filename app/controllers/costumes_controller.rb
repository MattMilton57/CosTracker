class CostumesController < ApplicationController
    @costume_types = ['shirt', 'pants', 'hat', 'skirt', 'bodice', 'shoes', 'coat', 'vest', ]
    @costume_eras = ['Greek & Roman', 'Asian', 'Victorian', 'Elizabethan', 'Early 20th century', 'Mid 20th century','Modern casual','Modern formal', 'Fantasy' ]
    
    def index 
        @costumes = Costume.all
    end

    def new
        @costume=Costume.create
    end

    def create 
        @costume=Costume.create
    end

    def edit

    end

    def update

    end

    def destroy

    end
end
