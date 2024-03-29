~~~shell
sudo systemctl start apache2.service
sudo systemctl stop apache2.service
sudo systemctl restart apache2.service
sudo systemctl status apache2.service
~~~

~~~shell
sudo systemctl stop elasticsearch
sudo systemctl status elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl disable elasticsearch
~~~

~~~shell
sudo systemctl stop kibana
sudo systemctl status kibana
sudo systemctl enable kibana
sudo systemctl disable kibana
~~~

~~~shell
sudo systemctl stop logstash
sudo systemctl status logstash
sudo systemctl enable logstash
sudo systemctl disable logstash
~~~

~~~shell
which mysql

sudo systemctl status mysql
sudo systemctl start mysql.service
sudo systemctl stop mysql.service
service mysql restart

journalctl -f -u mysql.service
~~~

~~~shell
cat /etc/mysql/mysql.conf.d/mysqld.cnf
cat /etc/mysql/mysql.conf.d/mysql.cnf
~~~

sudo su

node --version
npm -v
sudo apt-get remove nodejs

journalctl
journalctl -f -u mysql.service

mysqldump -u admin -ppassword mydb > mydb.sql

mysql -u USERNAME -pPASSWORD
show databases;
create database my_database_name;
use my_database_name;

memory usage by each process

sudo pmap -x <process pid>
	
ps -eo size,pid,user,command --sort -size | \
    awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' |\
    cut -d "" -f2 | cut -d "-" -f1	   
	
	
java -cp 06_FarmerOnboarding-1.0-SNAPSHOT-jar-with-dependencies.jar com.pcf.OnboardingMain



give you your public IP address as read from another location on the internet:
curl -4 icanhazip.com	
	
	
server’s IP address	  
hostname -I   


`curl https://ipinfo.io/ip` - Command for determining my public IP
