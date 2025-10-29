# frozen_string_literal: true

require "picocss/gem"
require "bundler/setup"
require "picocss"
require "fileutils"
require "rails/generators/test_case"
require "generators/picocss/install_generator"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
