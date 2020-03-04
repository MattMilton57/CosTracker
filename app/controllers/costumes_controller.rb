class CostumesController < ApplicationController
  
    @@costume_types = ['shirt', 'pants', 'hat', 'skirt', 'bodice', 'shoes', 'coat', 'vest', ]
    @@costume_eras = ['Greek & Roman', 'Asian', 'Victorian', 'Elizabethan', 'Early 20th century', 'Mid 20th century','Modern casual','Modern formal', 'Fantasy' ]
    @@costume_materials = ['cotton', 'paper mache', 'polyester', 'hemp', 'muslin', 'wool', 'thule', 'lycra',  ]
    
    def index 
        @costumes = Costume.all
        
    end

    def show
        @costume = Costume.find_by_id(params[:id])
    end

    def new
        @costume=Costume.create
        @costume_types = @@costume_types
        @costume_eras = @@costume_eras
        @costume_materials = @@costume_materials
    end

    def create 
        @costume=Costume.create(costume_params)
        redirect_to @costume
    end

    def edit
        @costume = Costume.find_by_id(params[:id])
        @costume_types = @@costume_types
        @costume_eras = @@costume_eras
        @costume_materials = @@costume_materials
    end

    def update
        @costume = Costume.find(params[:id])
        @costume.update(costume_params)
        redirect_to @costume
    end

    def destroy

    end
    private

    def costume_params
        params.require(:costume).permit(:title, :description, :costume_type, :era, :material, :color, :barcode, :location, :image)
    end
end
