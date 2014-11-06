class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end

  def save
    #{create and instance of recipie clsas
    # create recipe ingredients for each ID in ingredients key
    @recipe = Recipe.create(
                        name: @attributes[:name],
                        instructions: @attributes[:instructions])
    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id)
    end
  end




end
