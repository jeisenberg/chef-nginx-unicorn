default['nginx_unicorn']['server_name'] = 'unicorn_app_server'
default['nginx_unicorn']['proxy_server_name'] = 'unicorn_proxy'
default['nginx_unicorn']['proxy_server_path'] = 'unix:/sockets/unicorn.sock'
default['nginx_unicorn']['dir'] = '/etc/nginx'