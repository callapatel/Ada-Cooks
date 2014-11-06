class RecipesController < ApplicationController

#create, edit, or delete a Recipe
  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.save
      redirect_to recipe_path(@recipe_form.recipe.id)
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
