# frozen_string_literal: true

require_relative "picocss/version"

module Picocss
  class << self
    def load!
      if defined?(::Rails)
        require "picocss/railtie"
      elsif defined?(::Bridgetown)
        require "picocss/bridgetown"
      elsif defined?(::Sinatra)
        require "picocss/sinatra"
      end
    end
  end
end

Picocss.load!
