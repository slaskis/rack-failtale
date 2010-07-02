require "pp"
require "failtale-reporter"

module Rack
  
  class Failtale
    
    def initialize(app, api_key = nil)
      @app = app
      FailtaleReporter.configure do |config|
        config.default_reporter "rack"
        config.api_token api_key
        config.application_root ::File.dirname(::File.dirname(__FILE__))
        config.information_collector do |error,env|
          error.environment.merge!(env)
        end
      end
    end
    
    def call(env)
      FailtaleReporter.report(nil,env) do
        @app.call(env)
      end
    end
    
  end
end