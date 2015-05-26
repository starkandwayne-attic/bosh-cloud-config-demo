require 'yaml'

print YAML.load_file('.deployments/redis-warden.yml')
       .select { |key, value| %w(networks resource_pools disk_pools compilation).include? key }
       .tap { |d| d['networks'][0]['subnets'].map! do |n|
         n.merge!({'gateway' => n['reserved'].pop})
       end}.to_yaml
