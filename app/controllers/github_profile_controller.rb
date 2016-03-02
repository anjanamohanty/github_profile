class GithubProfileController < ApplicationController
  def ask
  end

  def show
    username = "anjanamohanty"
    g = Github.new(username)
    @repository_list = g.repositories
  end
end
