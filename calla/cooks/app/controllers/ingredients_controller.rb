class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params.require(:ingredient).permit(:name, :quantity))
    if @ingredient.save
      redirect_to root_path
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
      redirect_to root_path
    else
      render :edit
    end
  end

  



end
