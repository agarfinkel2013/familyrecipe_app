class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.recipe_id = params[:recipe_id]
    @ingredient.amount = params[:amount]
    @ingredient.ingredname = params[:ingredname]
    
    if @ingredient.save
      redirect_to ingredients_url
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def update
    @ingredient = Ingredient.find_by_id(params[:id])
    @ingredient.recipe_id = params[:recipe_id]
    @ingredient.amount = params[:amount]
    @ingredient.ingredname = params[:ingredname]
    
    if @ingredient.save
      redirect_to ingredients_url
    else
      render 'new'
    end
  end

  def destroy
    @ingredient = Ingredient.find_by_id(params[:id])
    @ingredient.destroy
    redirect_to ingredients_url
  end
end
