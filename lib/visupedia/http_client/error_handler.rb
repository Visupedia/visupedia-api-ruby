module Visupedia

  module HttpClient

    # ErrorHanlder takes care of selecting the error message from response body
    class ErrorHandler < Faraday::Middleware

      def initialize(app)
        super(app)
      end

      def call(env)
        @app.call(env).on_complete do |env|
          code = env[:response].status
          type = env[:response].headers["content-type"]

          case code
          when 500...599
            raise Visupedia::Error::ClientError.new("Error #{code}", code)
          when 400...499
            body = Visupedia::HttpClient::ResponseHandler.get_body(env[:response])
            message = ""

            # If HTML, whole body is taken
            if body.is_a?(String)
              message = body
            end

            if message == ""
              message = "Unable to understand the content type of response returned by request responsible for error"
            end

            raise Visupedia::Error::ClientError.new message, code
          end
        end
      end

    end

  end

end
