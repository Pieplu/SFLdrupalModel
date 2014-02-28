# Deploy an sflinux Drupal site.
# TODO Move this to a definition with parameters.
require_recipe "mysql"
require_recipe "drush"
require_recipe "drush_make"

# Add an admin user to mysql
execute "add-admin-user" do
  command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -e \"" +
      "GRANT ALL PRIVILEGES ON *.* TO 'myadmin'@'localhost' IDENTIFIED BY 'myadmin' WITH GRANT OPTION;" +
      "GRANT ALL PRIVILEGES ON *.* TO 'myadmin'@'%' IDENTIFIED BY 'myadmin' WITH GRANT OPTION;\" " +
      "mysql"
  action :run
end

# TODO: Break this out into a vagrant only cookbook? (name: "drupal-vagrant")
# create a drupal db
execute "add-drupal-db" do
  command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -e \"" +
      "CREATE DATABASE IF NOT EXISTS drupal;\""
  action :run
  ignore_failure true
end

# Create folders for virtual host
bash "install-default-drupal-makefile" do
  code <<-EOH
(mkdir -p /vagrant/public/drupal.vbox.local/www)
  EOH
end


