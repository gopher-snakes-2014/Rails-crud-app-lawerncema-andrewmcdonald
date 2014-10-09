class HomeController < ApplicationController

  def index
    @user = User.all
  end

  def delete
    @user = User.first
    if @user
      @user.destroy
    end
  end

end
