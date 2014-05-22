module Visupedia

  module HttpClient

    # ResponseHandler takes care of decoding the response body into suitable type
    class ResponseHandler

      def self.get_body(response)
        type = response.headers["content-type"]
        body = response.body

        return body
      end

    end

  end

end
