require "test_helper"

class PantryItemsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Pantry_item.count", 1 do
      post "/pantry_items.json", params: { measurement: "5 lb.", name: "flour", user_id: 1, is_kosher: true }
      assert_response 201
    end
  end
end
