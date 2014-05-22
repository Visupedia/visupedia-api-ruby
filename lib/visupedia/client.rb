require "faraday"
require "json"

require "visupedia/api/visu"

module Visupedia

  class Client

    def initialize(auth = {}, options = {})
      @http_client = Visupedia::HttpClient::HttpClient.new(auth, options)
    end

    # Returns an MyVisu api instance
    #
    # key - The api key provided by Visupedia
    def visu(key)
      Visupedia::Api::Visu.new(key, @http_client)
    end

  end

end
