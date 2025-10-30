require "fileutils"

module Picocss
  module Generators
    class TemplateLoginGenerator
      TEMPLATES_DIR ||= File.expand_path("../templates", __dir__)

      def self.generate
        template_file = File.join(TEMPLATES_DIR, "login.html.erb")
        dest_dir = "src/_includes"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(template_file, File.join(dest_dir, "login.html"))

        puts "✅ Template de login copiado para #{dest_dir}/login.html"
      end
    end
  end
end
