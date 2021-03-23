require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get masters" do
    get pages_masters_url
    assert_response :success
  end

  test "should get padawans" do
    get pages_padawans_url
    assert_response :success
  end

  test "should get power_training" do
    get pages_power_training_url
    assert_response :success
  end

  test "should get fighting_styles" do
    get pages_fighting_styles_url
    assert_response :success
  end
end
