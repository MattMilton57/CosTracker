class ProductionsController < ApplicationController
    def index
        @theatres=Theatre.all
        @productions=Production.all
    end

    def show
        @theatres = Theatre.all
        @costume_designers = CostumeDesigner.all
        @production = Production.find_by_id(params[:id])
    end

    def new
        @theatres = Theatre.all
        @costume_designers = CostumeDesigner.all
        @production = Production.create
    end

    def create 
        @production = Production.create(production_params)
        redirect_to @production
    end

    def edit
        @theatres = Theatre.all
        @costume_designers = CostumeDesigner.all
        @production = Production.find(params[:id])
    end

    def update
        @production = Production.find(params[:id])
        @production.update(production_params)
        redirect_to @production
    end

    def destroy
        @production = Production.find(params[:id])
        @production.destroy
        flash[:messages] = "production deleted"
        redirect_to productions_path
    end

    private

    def production_params
        params.require(:production).permit(:title, :first_dress, :strike, :costume_designer_id, :theatre_id, :costume_ids)
    end
end
