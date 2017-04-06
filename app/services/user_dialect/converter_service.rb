module UserDialect
  class ConverterService

    attr_accessor :converted_message

    def initialize(user_name:, dialect:, message: )
      @user_name = user_name
      @dialect   = dialect || UserDialect::StorageService.get_user_dialect(current_user)
      @message   = message
    end

    def run
      return converted_message
    end

    private

    def converted_message
      @converted_message ||= @message
    end
  end
end
