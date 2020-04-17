class Api::V1::IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all
    render json: ingredients.to_json
  end
end
