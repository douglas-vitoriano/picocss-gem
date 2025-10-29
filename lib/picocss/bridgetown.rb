# frozen_string_literal: true

require "fileutils"

module Picocss
  module Bridgetown
    if defined?(::Bridgetown)
      ::Bridgetown::Hooks.register :site, :post_read do
        asset_dir = File.expand_path("../../vendor/assets/stylesheets", __dir__)
        dest_dir = File.join(::Bridgetown::Current.site.dest, "assets/css")

        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(File.join(asset_dir, "pico.min.css"), dest_dir)
      end
    end
  end
end
