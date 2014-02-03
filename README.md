nginx_unicorn Cookbook
======================
This is a quick and dirty cookbook for configuring nginx to serve as a reverse proxy for a unicorn back end. 

e.g.
This cookbook makes your favorite breakfast sandwich.

Requirements
------------
Requires nginx::source

Tested on Ubuntu 10.04

e.g.
#### packages
- `nginx::source` - this cookbook requires nginx::source installed on the node. Place 'nginx'in the recipe run list ahead of nginx_unicorn

Attributes
----------

<table>
  <tr>
    <th>['nginx_unicorn]['proxy_server_name']</th>
    <th>String</th>
    <th>Upstram server name</th>
    <th>e.g. 'app_upstream'</th>
  </tr>
  <tr>
    <td><tt>['nginx_unicorn']['proxy_server_path']</tt></td>
    <td>String</td>
    <td>the location of the unicorn socket</td>
    <td>e.g. 'unix:/sockets/unicorn.sock'</td>
  </tr>
  <tr>
    <td><tt>['nginx_unicorn']['server_name']</tt></td>
    <td>String</td>
    <td>server name for nginx</td>
    <td>e.g. 'domain.com'</td>
  </tr>
</table>

Usage
-----
#### nginx_unicorn::default

Just include `nginx_unicorn` in your node's `run_list` after nginx:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nginx_unicorn]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jack Eisenberg
