name 'dynamic_motd'
maintainer 'Alex Markessinis'
maintainer_email 'markea125@gmail.com'
license 'MIT'
description 'Configures a dynamic MOTD on linux systems.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.5'
supports 'debian'
supports 'ubuntu'
supports 'centos'
supports 'redhat'
supports 'amazon'
issues_url 'https://github.com/MelonSmasher/chef_dynamic_motd/issues' if respond_to?(:issues_url)
source_url 'https://github.com/MelonSmasher/chef_dynamic_motd' if respond_to?(:source_url)
