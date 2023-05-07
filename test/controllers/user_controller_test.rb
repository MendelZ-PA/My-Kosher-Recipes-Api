require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Mussia", email: "mussiaz@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
end
