class GithubProfileController < ApplicationController
  def ask
  end

  def show
    username = params[:username]
    @repository_list = Github.new(username).repositories
  end
end
