class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name, :quantity))
    if @ingredient.save
      redirect_to ingredient_path(@ingredient.id), notice: "This ingredient has been saved."
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient = Ingredient.update(params.require(:ingredient).permit(:name, :quantity))
      redirect_to ingredient_path(@ingredient.id)
    else
      render :edit
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end



end
