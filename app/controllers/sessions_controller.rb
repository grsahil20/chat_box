class SessionsController < ApplicationController
  def create
    if params[:user_name].nil? || params[:dialect].nil?
      flash[:error] = 'user_name & dialect is required'
    else
      session[:user] = params[:user_name]
      flash[:notice] = 'welcome to chat box'
    end
    redirect_to root_path
  end

  def destroy
  end
end
