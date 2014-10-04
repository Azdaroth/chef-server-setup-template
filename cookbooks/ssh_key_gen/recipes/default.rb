username = "deploy"

execute "generate ssh key for deploy user." do
  user username
  creates "/home/#{username}/.ssh/id_rsa.pub"
  command "ssh-keygen -t rsa -q -f /home/#{username}/.ssh/id_rsa -P \"\""
end