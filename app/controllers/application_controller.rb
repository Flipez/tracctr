class ApplicationController < ActionController::Base
#  protect_from_forgery with: :null_session

  before_action :authorize
  before_action :current_user

  def current_user
    @cu ||= User.find(session[:user_id]) if session[:user_id] rescue session[:user_id] = nil
  end
  
  def authorize
    redirect_to '/users/new' unless current_user
  end

end
