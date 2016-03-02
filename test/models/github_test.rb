require 'test_helper'

class GithubTest < ActionController::TestCase
  test "can get response from github api" do
    r = Github.new("anjanamohanty")

    assert r.response
    assert_equal "anjanamohanty", r.response[0]["owner"]["login"]
  end

  test "can get responsitory list" do
    r = Github.new("anjanamohanty")

    assert r.repositories
  end
end
