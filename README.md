# Silverstripe Build Image

This Docker image is for the purpose of running CI on silverstripe apps. It attempts to be as lightweight as possible, while still including the necessary build tools for our stack.

## Installs:

* php + composer
* php mysql drivers
* npm + grunt-cli, gulp, bower

Configures SS environment for:

* mysql connection to a linked container
* solr connection to a linked container

## ENV variables:

<table>
  <tr>
    <th>Key</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>MYSQL_PORT_3306_TCP_ADDR</tt></td>
    <td>IP address of mysql host</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>SOLR_HOST</tt></td>
    <td>IP address of solr host</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>SOLR_PORT</tt></td>
    <td>port number to connect to SOLR_HOST on</td>
    <td><tt>8984</tt></td>
  </tr>
</table>
