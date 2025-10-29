# spec/picocss/install_generator_spec.rb

require "spec_helper"
require "rails/generators"
require "generators/picocss/install_generator"
require "fileutils"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Picocss::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  def test_creates_pico_css
    run_generator
    assert File.exist?(File.join(destination_root, "app/assets/stylesheets/pico.min.css"))
  end
end
