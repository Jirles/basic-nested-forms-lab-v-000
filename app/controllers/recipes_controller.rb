class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(Ingredient.new(name: "Ingredient 1"))
    @recipe.ingredients.build(Ingredient.new(name: "Ingredient 2"))
  end

  def create
    @recipe = Recipe.new
  end
end
