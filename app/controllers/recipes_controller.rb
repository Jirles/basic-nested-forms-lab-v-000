class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(Ingredient.new)
    @recipe.ingredients.build(Ingredient.new)
  end

  def create
    @recipe = Recipe.new
  end
end
