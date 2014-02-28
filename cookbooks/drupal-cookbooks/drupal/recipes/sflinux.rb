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
# create all db on the Vagrantfile
node[:dbProjets].each do |database|
	execute "add-databases" do
	  command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -e \"" +
	      "CREATE DATABASE IF NOT EXISTS #{database};\""
	  action :run
	  ignore_failure true
	end
end