module Visupedia

  module Api

    # Returns an MyVisu api instance
    #
    # key - The api key provided by Visupedia
    class Visu

      def initialize(key, client)
        @key = key
        @client = client
      end

      # Returns all information about the wanted Visu
      #
      # '/api?key=:key&id=:id&lang=:lang&version=:version' GET
      #
      # id - The unique ID of the Visu
      # lang - The language code wanted for the Visu
      # version - Use a specific version of our API
      def get(id, lang, version, options = {})
        body = options.fetch(:query, {})
        body[:id] = id
        body[:lang] = lang
        body[:version] = version

        @client.get("/api?key=#{@key}&id=#{id}&lang=#{lang}&version=#{version}", body, options)
      end

    end

  end

end
