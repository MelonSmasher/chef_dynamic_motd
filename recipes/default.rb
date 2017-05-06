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


if node['platform_family'] == 'debian' or 'redhat' or 'amazon'

  package 'figlet'

  if node['platform_family'] == 'rhel' or 'amazon'
    package 'redhat-lsb-core'
  elsif node['platform_family'] == 'debian'
    package 'lsb-release'
  end

  create_file('dymotd.sh', '/etc/profile.d/dymotd.sh')

  file '/etc/motd' do
    content " #{node['dynamic_motd']['message']}\n"
    mode '0655'
    owner 'root'
    group 'root'
  end

end
