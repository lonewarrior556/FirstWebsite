class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user


  def login(user)
    session[:session_token] = user.reset_session_token!
  end

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by_session_token(session[:session_token])
  end

  # logged_in? helper method
  # current_user helper method

end
