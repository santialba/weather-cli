# frozen_string_literal: true

module Weather
  module Cli
    # Initialize http client and manage request
    class HttpClient
      URL = 'http://api.tiempo.com'
      URL_INDEX = 'index.php'
      API_LANG = 'es'
      API_KEY = ENV['API_KEY']

      def initialize(param)
        params = { api_lang: API_LANG,
                   affiliate_id: API_KEY }.merge(param)

        @connection = Faraday.new(
          url: URL,
          params: params
        )
      end

      def api_request
        @connection.get(URL_INDEX)
      end
    end
  end
end
