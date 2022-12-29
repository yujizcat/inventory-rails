class InventoriesController < ApplicationController

    before_action :set_inventory, only: [:show]
    skip_before_action :verify_authenticity_token

    def index
        @inventories = Inventory.all
        render json: @inventories
    end

    def show
        render json: @inventory
    end


    def create
        #@inventory = Inventory.new(params[:inventory])
        @inventory = Inventory.new(params.require(:inventory).permit(:item, :units, :price, :category, :sale, :description))
        @inventory.save
        render json: @inventory
        
    end

    def update
        @inventory = Inventory.find(params[:id])
        @inventory.update(inventory_params)
        render json: @inventory
    end

    def destroy
        @inventory = Inventory.find(params[:id])
        @inventory.destroy
        render json: @inventory 
    end

    def destroyAll
        @inventories = Inventory.all
        @inventories.destroy
        render json: @inventories
    end

    private

    def set_inventory
        @inventory = Inventory.find(params[:id])
    end
    

    def inventory_params
        params.require(:inventory).permit(:item, :units, :price, :category, :sale, :description)
    end

   

end