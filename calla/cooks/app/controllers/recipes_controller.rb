class RecipesController < ApplicationController

#create, edit, or delete a Recipe

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :instructions, :prep, :cook))
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe = Recipe.update(params.require(:recipe).permit(:name, :instructions, :prep, :cook))
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.all.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  def show
    @recipes = Recipe.all.find(params[:id])
  end


end
