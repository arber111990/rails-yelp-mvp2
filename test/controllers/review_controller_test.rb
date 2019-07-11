require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get review_new_url
    assert_response :success
  end

  test "should get create" do
    get review_create_url
    assert_response :success
  end

  test "should get review_params" do
    get review_review_params_url
    assert_response :success
  end

end
