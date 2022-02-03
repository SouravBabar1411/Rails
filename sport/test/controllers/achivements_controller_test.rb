require 'test_helper'

class AchivementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achivement = achivements(:one)
  end

  test "should get index" do
    get achivements_url
    assert_response :success
  end

  test "should get new" do
    get new_achivement_url
    assert_response :success
  end

  test "should create achivement" do
    assert_difference('Achivement.count') do
      post achivements_url, params: { achivement: { man_of_series: @achivement.man_of_series, person: @achivement.person } }
    end

    assert_redirected_to achivement_url(Achivement.last)
  end

  test "should show achivement" do
    get achivement_url(@achivement)
    assert_response :success
  end

  test "should get edit" do
    get edit_achivement_url(@achivement)
    assert_response :success
  end

  test "should update achivement" do
    patch achivement_url(@achivement), params: { achivement: { man_of_series: @achivement.man_of_series, person: @achivement.person } }
    assert_redirected_to achivement_url(@achivement)
  end

  test "should destroy achivement" do
    assert_difference('Achivement.count', -1) do
      delete achivement_url(@achivement)
    end

    assert_redirected_to achivements_url
  end
end
