include_recipe 'apt'

node.default['rvm']['gpg'] = {}
node.default['rvm']['install_rubies'] = true
node.default['rvm']['rubies'] = [node['dimod-example-ruby']['ruby_version']]
node.default['rvm']['default_ruby'] = node['dimod-example-ruby']['ruby_version']
node.default['rvm']['global_gems'] = [{name: 'bundler'}]
include_recipe 'rvm::system'
