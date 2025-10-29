require "sinatra/base"

module Picocss
  module Sinatra
    def self.registered(app)
      root = File.expand_path("../../../vendor/assets", __dir__)
      app.use ::Rack::Static, urls: ["/assets"], root: root
    end
  end
end
