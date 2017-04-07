require 'nokogiri'
require 'open-uri'

module UserDialect
  class ConverterService

    BASE_URL = "http://www.degraeve.com/cgi-bin/babel.cgi?"
    DIALECTS = {
      'yoda' => 'yoda',
      'valley_girl' => 'valley',
      'binary_code' => 'binary',
    }
    attr_accessor :converted_message

    def initialize(user_name:, dialect:, message: )
      @user_name = user_name
      @dialect   = (dialect || UserDialect::StorageService.get_user_dialect(current_user)).gsub(' ', '_').downcase
      @message   = message
    end

    def run
      conversion_link
      convert_message
    end

    private

    def conversion_link
      @link ||= UserDialect::ConverterService::BASE_URL + link_params.to_param
    end

    def link_params
      {
        d: UserDialect::ConverterService::DIALECTS[@dialect],
        w: @message,
      }
    end

    def convert_message
      @converted_message ||= Nokogiri::HTML(open conversion_link).css('body table p').first.content.strip
    end
  end
end
