## Installation

| Command                        |     Description             |
|--------------------------------|-----------------------------|
|`sudo systemctl stop apache2`   | stop your web server                            |
|`sudo systemctl start apache2`  |start the web server when it is stopped|
|`sudo systemctl restart apache2`|stop and then start the service again|
|`sudo systemctl reload apache2` |If you are simply making configuration changes, Apache can often reload without dropping connections. To do this, use this command|
|`sudo systemctl disable apache2`|By default, Apache is configured to start automatically when the server boots. If this is not what you want, disable this behavior by typing|
|`sudo systemctl enable apache2` |To re-enable the service to start up at boot|
|`sudo systemctl status apache2` |Checking the status of the Web Server|

https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-20-04

