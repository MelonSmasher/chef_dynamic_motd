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


if node['platform_family'] == 'debian' or 'redhat'

  package 'figlet' do
    action :install
  end

  package 'lsb' do
    if node['platform_family'] == 'redhat'
      name 'redhat-lsb-core'
    elsif node['platform_family'] == 'debian'
      name 'lsb-release'
    end
    action :install
  end

  create_file('dymotd.sh', '/etc/profile.d/dymotd.sh')

  file '/etc/motd' do
    content " #{node['dynamic_motd']['message']}\n"
    mode '0655'
    owner 'root'
    group 'root'
  end

end
