# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

user = "vagrant"
ip_address = "192.168.33.10"

role :app, ["#{user}@#{ip_address}"]
role :web, ["#{user}@#{ip_address}"]
role :db,  ["#{user}@#{ip_address}"]


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server ip_address, user: user, roles: %w{web app}, my_property: :my_value


set :rails_env, 'production'

set :bundle_flags, "--no-deployment"


# set :ssh_options, {
#   keys: %w(/Users/thien.ho/.ssh/edutower.pem),
#   forward_agent: true,
# }
 set :ssh_options, {
   keys: %w(/home/an/.ssh/id_rsa),
   forward_ agent: false,
   # auth_methods: %w(password)
 }

set :nginx_server_name, 'demo_deploy_cap'