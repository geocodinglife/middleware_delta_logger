class DeltaLogger
  def initialize app, formatting_char = '='
    @app = app
    @formatting_char = formatting_char
  end

  def call env
    request_started_on = Time.now
    @status, @headers, @response = @app.call(env)
    request_ended_on = Time.now

    Rails.logger.debug @formatting_char * 50
    Rails.logger.debug "Request delta time: #{request_ended_on - request_started_on} seconds."
    Rails.logger.debug @formatting_char * 50

    [@status, @headers, @response]
  end
end