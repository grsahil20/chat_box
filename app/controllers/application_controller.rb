class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:user]
  end
  helper_method :current_user

  def current_dialect
    @current_dialect ||= UserDialect.get_user_dialect(current_user)
  end
  helper_method :current_dialect

  def online_users
    UsersOnline.online_users
  end

end

