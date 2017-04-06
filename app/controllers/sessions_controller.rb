class SessionsController < ApplicationController
  def create
    if params[:user_name].nil? || params[:dialect].nil?
      flash[:error] = 'user_name & dialect is required'
    else
      UserDialect::StorageService.set_user_dialect(params[:user_name], params[:dialect])
      UsersOnline.set_user_online(params[:user_name])
      session[:user] = params[:user_name]
      flash[:notice] = 'welcome to chat box'
    end
    redirect_to root_path
  end

  def destroy
  end
end
