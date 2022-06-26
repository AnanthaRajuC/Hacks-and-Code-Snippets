sudo systemctl stop elasticsearch
sudo systemctl status elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl disable elasticsearch

sudo systemctl stop kibana
sudo systemctl status kibana
sudo systemctl enable kibana
sudo systemctl disable kibana

sudo systemctl stop logstash
sudo systemctl status logstash
sudo systemctl enable logstash
sudo systemctl disable logstash

memory usage by each process

sudo pmap -x <process pid>
	
ps -eo size,pid,user,command --sort -size | \
    awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' |\
    cut -d "" -f2 | cut -d "-" -f1	   
	
	


give you your public IP address as read from another location on the internet:
curl -4 icanhazip.com	
	
	
server’s IP address	  
hostname -I   


`curl https://ipinfo.io/ip` - Command for determining my public IP
