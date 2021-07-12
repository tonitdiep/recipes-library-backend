class Api::V1::RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :update, :destroy]
  # before_action :set_recipe, only: [:index]
  def index
    recipes = Recipe.all
    render json: recipes
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe
    else
      render json: {error: 'Error creating this recipe'}
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe_id = recipe.id
    recipe.destroy
    render json: recipe_id
  end

  private

    def recipe_params      
      params.require(:recipe).permit(:name, :cuisine_country, :dietary_type, :cook_time, :spice_level, :rating, :serving_size, :skill_level, :starred, :rating)
    end
end
