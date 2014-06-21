package "memcached"

# use custom memcached configuration file.
template "/etc/memcached.conf" do
  owner "root"
  group "root"
  mode "0755"
  source "memcached.conf.erb"
  notifies :run, "execute[restart-memcached]", :immediately
end

execute "restart-memcached" do
  command "service memcached restart"
  action :nothing
end
