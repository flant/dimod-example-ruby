include_recipe 'apt'

node.default['rvm']['gpg'] = {}
node.default['rvm']['install_rubies'] = true
node.default['rvm']['rubies'] = ['2.3.1']
node.default['rvm']['default_ruby'] = node['rvm']['rubies'].first
node.default['rvm']['global_gems'] = [{name: 'bundler'}]
include_recipe 'rvm::system'
