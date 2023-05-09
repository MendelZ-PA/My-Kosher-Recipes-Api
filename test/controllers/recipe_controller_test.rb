require "test_helper"

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { name: "Fries", prep_time: "30 min", instructions: "pour on a bit of oil, sprinkle with salt, bake 425F", user_id: 1 }
      assert_response 201
    end
  end
end
