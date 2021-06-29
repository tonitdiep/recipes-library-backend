class Api::V1::RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :update, :destroy]
  # before_action :set_recipe, only: [:index]
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
    # binding.pry
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: recipes
    else
      render json: {error: 'Error creating this recipe'}
      # render json: RecipeSerializer.errors, status: :unprocessable_entity
    end
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(name: params["recipe"]["name"])
    recipe.save
    render json: recipe
    # if recipe.update(recipe_params)
    #   render json: RecipeSerializer
    # else
    #   render json: RecipeSerializer.errors, status: :unprocessable_entity
    # end
  end

  def destroy
    # recipe.destroy
    # byebug
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: 'recipes'
  end

  private

    # def set_recipe
    #   recipe = Recipe.find(params[:id])
    # end

    def recipe_params
      params.require(:recipe).permit(:name, :cuisine_country, :dietary_type, :cook_time, :spice_level, :rating, :serving_size, :skill_level, :starred)
    end
end
