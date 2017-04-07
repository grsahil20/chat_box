class ChatsController < ApplicationController
  def create
    respond_to do |format|
      format.js do
        converter_service = UserDialect::ConverterService.new(
          user_name: current_user,
          dialect: current_dialect,
          message: params[:message]
        )

        converter_service.run
        @chat_message = converter_service.converted_message

        @user = current_user
        @created_at = Time.now
      end
    end
  end
end
