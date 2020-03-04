class CostumesController < ApplicationController
  
    
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
        @costume = Costume.find(params[:id])
        @costume.destroy
        flash[:messages] = "costume deleted"
        redirect_to costumes_path
    end
    private

    def costume_params
        params.require(:costume).permit(:title, :description, :costume_type, :era, :material, :color, :barcode, :location, :image)
    end
end
