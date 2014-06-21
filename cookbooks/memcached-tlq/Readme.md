# Memcached Chef Recipe

Sets up a very basic memcached install with a fairly standard config
file.

## Configuration

The only configurable option is whether or not to bind to (only accept
connections from) 127.0.0.1

If the key node['memcached']['dont_bind'] is set to true then memcached
will be configured to accept connections from any IP. This should only
be chosen if security is being handled elsewhere, e.g. by firewall
rules.
