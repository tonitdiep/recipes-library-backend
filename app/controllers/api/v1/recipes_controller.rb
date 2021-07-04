class Api::V1::RecipesController < ApplicationController
  # before_action :set_recipe, only: [:show, :update, :destroy]
  # before_action :set_recipe, only: [:index]
  def index
    recipes = Recipe.all
    # render json: RecipeSerializer.new(recipes)
    render json: recipes
  end

  def show
byebug
    recipe = Recipe.find(params[:id])
    render json: recipe
    # render json: RecipeSerializer.new(recipe)
    #RecipeSerializer
  end

  def create

    recipe = Recipe.new(recipe_params)

    if recipe.save
      # render json: RecipeSerializer.new(recipe)
      render json: recipe
    else
      render json: {error: 'Error creating this recipe'}
      # render json: RecipeSerializer.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   recipe = Recipe.find(params[:id])
  #   recipe.update(name: params["recipe"]["name"])
  #   recipe.save
  #   render json: recipe
  #   # if recipe.update(recipe_params)
  #   #   render json: RecipeSerializer
  #   # else
  #   #   render json: RecipeSerializer.errors, status: :unprocessable_entity
  #   # end
  # end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe_id = recipe.id
    recipe.destroy
    render json: recipe_id
  end

  private

    # def set_recipe
    #   recipe = Recipe.find(params[:id])
    # end

    def recipe_params
      
      params.require(:recipe).permit(:name, :cuisine_country, :dietary_type, :cook_time, :spice_level, :rating, :serving_size, :skill_level, :starred, :rating)
    end
end
