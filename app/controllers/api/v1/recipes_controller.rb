class Api::V1::RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :update, :destroy]

  def index
    recipes = Recipe.all

    render json: recipes 
    # render json: RecipeSerializer.new(recipes)
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
    # render json: RecipeSerializer.new(recipe)
    #RecipeSerializer
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: RecipeSerializer, status: :created, location: recipe
    else
      render json: RecipeSerializer.errors, status: :unprocessable_entity
    end
  end

  def update
    if recipe.update(recipe_params)
      render json: RecipeSerializer
    else
      render json: RecipeSerializer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    recipe.destroy
  end

  private

    # def set_recipe
    #   recipe = Recipe.find(params[:id])
    # end

    def recipe_params
      params.require(:recipe).permit(:name, :cuisine_country, :dietary_type, :time_to_cook, :spice_level, :rating, :serving_size, :skill_level)
    end
end
