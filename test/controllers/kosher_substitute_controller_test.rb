require "test_helper"

class KosherSubstitutesControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Kosher_substitute.count", 1 do
      post "/kosher_substitutes.json", params: { name: "Fake Crab", ingredient_id: 105, brand: "Dyna-Sea", url: "url" }
      assert_response 201
    end
  end
end
