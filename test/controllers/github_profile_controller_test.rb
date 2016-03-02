require 'test_helper'

class GithubProfileControllerTest < ActionController::TestCase
  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should get show" do
    post :show
    assert_response :success
  end

end
