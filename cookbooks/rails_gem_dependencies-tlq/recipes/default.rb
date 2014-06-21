package 'curl'
package 'libcurl3'
package 'libcurl3-dev'
package 'libmagickwand-dev'
package 'imagemagick'
apt_repository("node.js") do
  uri "http://ppa.launchpad.net/chris-lea/node.js/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "C7917B12"
end
package 'nodejs'
