== README

Super quick guide for the server setup which works with Ubuntu 14.04 (details will be covered in a blog post soon)

* Clone repository

* bundle install

* berks install

* Put your ssh key in data_bags/users/deploy.json and password generated with: openssl passwd -1 "super-secret-password-for-deploy-user”

* Rename nodes/put_your_ip_address_here.json file with server's IP address

* Generate PostgreSQL password with: openssl passwd -1 "super-secret-password-for-postgresql” and put it in nodes/put_your_ip_address_here.json file in postgresql options

* Adjust Monit setup in nodes/put_your_ip_address_here.json (passwords, email address etc.)

* Carefully check all configuration options in roles directory (like the data directory for Mongodb).

* If you don't like to install some components, simply remove these roles from nodes/put_your_ip_address_here.json (like role[elasticsearch-server])

* copy your ssh key to the server (for root user), eg: ssh-copy-id root@server-ip

* knife solo prepare root@server-ip

* knife solo cook root@server-ip

* Alternatively, if you use Vagrant: knife solo prepare vagrant@127.0.0.1 -p 2222 -i /Users/username/.vagrant.d/insecure_private_key (on OS X, not sure about Linux) ; knife solo cook vagrant@127.0.0.1 -p 2222 -i /Users/username/.vagrant.d/insecure_private_key (remember about renaming nodes/put_your_ip_address_here.json to 127.0.0.1.json, you may also want to add vagrant user to sudo users in node configuration)

* You will probably have to restart sshd service manually (couldn't deal with some exceptions so far)

* That's it! Enjoy your server :)



