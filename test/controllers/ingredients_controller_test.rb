require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Ingredient.count", 1 do
      post "/ingredients.json", params: { measurement: "1 C", name: "Olive Oil", recipe_id: Recipe.first.id, is_kosher: true }
      assert_response 201
    end
  end
end
