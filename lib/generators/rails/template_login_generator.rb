# frozen_string_literal: true

require "fileutils"
require "rails/generators"

module Picocss
  module Generators
    class TemplateLoginGenerator < Rails::Generators::Base
      TEMPLATES_DIR = File.expand_path("../templates", __dir__)
      source_root TEMPLATES_DIR

      def copy_login_template
        dest_dir = "app/views/sessions"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(File.join(TEMPLATES_DIR, "login.html.erb"), File.join(dest_dir, "new.html.erb"))

        say "✅ Template de login copiado para #{dest_dir}/new.html.erb", :green
      end
    end
  end
end
