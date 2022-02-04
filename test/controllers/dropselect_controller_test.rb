require 'test_helper'

class DropselectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dropselect_index_url
    assert_response :success
  end

end
