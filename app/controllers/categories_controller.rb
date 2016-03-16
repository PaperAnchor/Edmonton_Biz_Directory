class CategoriesController < ApplicationController
    before_action :find_category, only: [:show, :edit, :update, :destroy]

    def index
        @categories = Category.order('name ASC')
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new post_params
        @categories = Category.order('name ASC')

        if @category.save
            redirect_to categories_path, notice: "Your Category has been saved!"
        else
            render 'new', notice: "There was an error while trying to create your category!"
        end

    end

    def show
        @categories = Category.all
    end

    def edit
        category = Category.find(params[:id])
    end

    def update
        if @category.update post_params
            redirect_to @category, notice: "Your Category was successfully updated!"
        else
            render 'edit'
        end
    end

    def destroy
        @category.destroy
        redirect_to categories_path
    end

    private

    def post_params
        params.require(:category).permit(:name)
    end

    def find_category
        @category = Category.find(params[:id])
    end

end
