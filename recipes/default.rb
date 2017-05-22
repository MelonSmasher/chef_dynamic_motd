#
# Cookbook:: dynamic_motd
# Recipe:: default
#

def create_file(source, file)
  cookbook_file file do
    source source
    action :create
    owner 'root'
    group 'root'
    mode '0775'
  end
end

def finish_up
  package 'figlet'
  create_file('dymotd.sh', '/etc/profile.d/dymotd.sh')
  file '/etc/motd' do
    content " #{node['dynamic_motd']['message']}\n"
    mode '0655'
    owner 'root'
    group 'root'
  end
end

case node['platform_family']
  when 'rhel', 'amazon'
    package 'redhat-lsb-core'
    finish_up
  when 'debian'
    package 'lsb-release'
    finish_up
  else
    log 'Unsupported Platform Family' do
      message "#{node['platform_family']} is not supported at this time."
      level :warn
    end
end
