class ProductionController < ApplicationController
    def index
        @productions=Production.all
    end
end
