class HomeController < ApplicationController

  def index
    @users = User.all
    # @friendships = User.
  end

end