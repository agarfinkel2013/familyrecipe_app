class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.yield = params[:yield]
    @recipe.preptime = params[:preptime]
    @recipe.cooktime = params[:cooktime]
    @recipe.user_id = params[:user_id]
    @recipe.instructions = params[:instructions]
    
    if @recipe.save
      redirect_to recipes_url
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find_by_id(params[:id])
  end

  def update
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.yield = params[:yield]
    @recipe.preptime = params[:preptime]
    @recipe.cooktime = params[:cooktime]
    @recipe.user_id = params[:user_id]
    @recipe.instructions = params[:instructions]
    
    if @recipe.save
      redirect_to recipes_url
    else
      render 'new'
    end
  end

  def destroy
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.destroy
    redirect_to recipes_url
  end
end
