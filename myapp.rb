remove_file 'app/views/layouts/application.html.erb'
remove_file 'public/index.html'
remove_file 'public/images/rails.png'
remove_file 'public/javascripts/.gitkeep'
remove_file 'public/javascripts/application.js'

run "cp -rf #{File.dirname(__FILE__)}/myapp.files/* ."
run "cp -rf #{File.dirname(__FILE__)}/myapp.files/.[a-zA-Z0-9]* ."

app_name_camelized = app_name.camelize
gsub_files = %w[config/application.rb
                config/routes.rb
                config/environments/production.rb]
gsub_files.each { |file| gsub_file file, 'Demo', "#{app_name_camelized}" }
