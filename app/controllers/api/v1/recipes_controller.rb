class Api::V1::RecipesController < ApplicationController
  # before_action :authenticate_user!
  def index
    recipes = Recipe.all.order(created_at: :desc)
    render json: recipes
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe, status: :ok
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instructions)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end
end
