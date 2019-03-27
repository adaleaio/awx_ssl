<!-- ![Image](../master/logo.png?raw=true) -->

By default, Ansible AWX does not come with ssl encryption. This Nginx Docker container accepts HTTPS requests and provides a reverse proxy the internal 'awx_web' container.

To build a new container
* Download this repository with git<br>
  'git clone git@github.com:adaleaio/awx_ssl_proxy.git'
* Change to the 'awx_ssl_proxy' directory<br>
  'cd awx_ssl_proxy'
* Run the 'rebuild.sh' script. This script will stop and remove the existing 'awx_ssl' container. build a new image and run the new docker container. <br>
  './rebuild.sh'
  
This container should be used with Ansible awx - https://github.com/ansible/awx
