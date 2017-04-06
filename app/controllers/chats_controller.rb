class ChatsController < ApplicationController
  def create
    respond_to do |format|
      format.js do
        @chat_message = params[:message]
        @user = current_user
        @created_at = Time.now
      end
    end
  end
end
