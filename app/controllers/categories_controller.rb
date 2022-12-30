class  CategoriesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_category, only: [:show]

    def index
        @categories = Category.all
        render json: @categories
    end

    def show
        render json: @category
    end

    def create
        @category = Category.new(category_params)
        @category.save
        render json: @category
    end


    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        render json: @category 
    end


    private

    def set_category
        @category = Category.find(params[:id])
    end
    

    def category_params
        params.require(:category).permit(:category, :name)
    end

end