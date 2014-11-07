require 'rails_helper'

describe "Recipe" do
  it "can create a recipe with title and description" do
    recipe = Recipe.new(
    title: "New Recipe",
    description: "Description goes here",
    )

  expect(recipe.title).to eq "New Recipe"
  expect(recipe.description). to eq "Recipe Description"

  end

end

describe "Recipe" do
  specify "I can search recipes by its ingredients" do
    tofu = Ingredient.create(name: "Tofu")
    pb = Ingredient.create(name: "Peanut Butter")
    stir_fry = Recipe.create(title: "Stir fry")
    stir_fry.ingredients.create( tofu, unit: " cup", amount: 1)
    pbj = Recipe.create(title: "PB&J")

    search_results = Recipe.with_ingredient_name("Tofu")
    expect(search_results).to include("stir fry")
  end

end



describe RecipesController do
  it "work" do

    get :index
    expect(response)
  end
end
