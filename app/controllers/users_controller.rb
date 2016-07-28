class UsersController < ApplicationController

  skip_before_action :authorize

  def new
    @user = User.new
  end

  def show
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to :back
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :paypal_url)
  end

end

