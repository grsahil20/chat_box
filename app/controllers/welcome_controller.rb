class WelcomeController < ApplicationController

  def index
    @online_users = online_users
  end

end
