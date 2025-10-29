class Picocss::TemplateLoginGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def copy_login_template
    copy_file "login.html.erb", "app/views/sessions/new.html.erb"
  end
end
