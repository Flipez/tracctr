class SessionsController < ApplicationController

  include ApplicationHelper

  skip_before_filter :authorize, only: [:new, :create]

  def new; end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:error] = user.errors
      redirect_back
    end
  end
  
  def destroy
    reset_session
    flash[:success] = 'Successfully logged out'
    redirect_to '/login'
  end

end
