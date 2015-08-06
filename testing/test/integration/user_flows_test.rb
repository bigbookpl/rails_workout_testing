require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

  test "browse cars" do
    https!
    get "/cars"
    assert_response :success
  end
end
