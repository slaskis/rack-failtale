require "failtale-reporter"

module Rack
  
  class Failtale
    
    def initialize(app, api_key = nil)
      @app = app
      FailtaleReporter.configure do |config|
        config.api_token api_key
        config.application_root ::File.dirname(::File.dirname(__FILE__))
      end
    end
    
    def call(env)
      FailtaleReporter.report do
        @app.call(env)
      end
    end
    
  end
end