class GithubProfileController < ApplicationController
  def ask
  end

  def show
    @repository_list = Github.new(params[:username]).repositories
  end
end
