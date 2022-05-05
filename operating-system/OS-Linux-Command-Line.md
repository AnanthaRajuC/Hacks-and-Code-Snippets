# Linux Commands

## Services

|       Command              |                         Description                          |
|----------------------------|--------------------------------------------------------------| 
|`sudo service mysql stop`   | stop MySQL server                                            |
|`sudo service mysql start`  | start MySQL server                                           |
|`sudo service mysql restart`| restart MySQL server                                         |
|`sudo service mysql status` | check MySQL server status (i.e. whether it is running or not)|

## Update

|       Command         |                         Description                                                                                                                                                      |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
|`apt update`           | Fetches only the information on latest packages that can be upgraded                                                                                                                     |
|`apt list –upgradable` | Display the packages that have updates available and therefore can be upgraded on the system.                                                                                            |
|`apt upgrade`          | The actual command that does the upgrade of the packages in the system. This command can install new packages if the dependencies require it, but it will never remove packages.         |
|`apt full-upgrade`     | In addition to upgrading new packages and installing new packages as required, it also removes existing installed packages if it determines that the dependencies are no longer required.|
|`apt autoremove`       | Removes unused packages which are no longer needed by the dependent packages. This can be executed after `apt upgrade`                                                                   |

## Files and Directories

|                          Command                      |                         Description                                                                                |
|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`pwd`                                                  | Shows Present Working Directory                                                                                    |
|`ls`                                                   | List all files, directories in the current working directory (Doesn't list hidden/dot files)                       |
|`ls -a`                                                | List all files, directories in the current working directory including the hidden/dot files                        |
|`ls -al`                                               | List all files, directories in the current working directory including the hidden/dot files with additional details|
|`cd`                                                   | Navigates back to home directory                                                                                   |
|`cat [FILE_NAME]`                                      | Displays the contents of the file                                                                                  |
|`echo "[TEXT]"`                                        | Displays the **TEXT** on the screen                                                                                |
|`echo "[TEXT]" -> [FILE_NAME.FILE_FORMAT]`             | save the **TEXT** in a with the given **FILE_NAME** and **FILE_FORMAT**                                            |
|`touch [FILE_NAME.FILE_FORMAT]`                        | Creates a new file with the given **FILE_NAME** and **FILE_FORMAT**                                                |
|`mkdir [DIRECTORY_NAME]`                               | Creates a new directory with the given **DIRECTORY_NAME**                                                          |
|`rmdir [DIRECTORY_NAME]`                               | Removes the directory with the given **DIRECTORY_NAME**                                                            |
|`rm [FILE_NAME]`                                       | Removes the file with the given **FILE_NAME**                                                                      |
|`lsblk -f`                                             | displays block devices, when used with the -f option, it prints file system type on partitions as well             |
|`nano [FILE_NAME.FILE_FORMAT]`                         | Creates a new file with the given **FILE_NAME** and **FILE_FORMAT** in nano text editor.                           |
|`sed -i '/old text/ s//new text/g' file_name.extension`| Replace text in a file.                                                                                            |

## Various

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`printenv` or `env`                       | List all the environment variables                                                                                 |
|`cat /proc/cpuinfo`                       | Display CPU info                                                                                                   |
|`find the number of physical CPU cores`   | find the number of physical CPU cores                                                                              |


## Processes

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`ps`                                      | Lists current user's running processes                                                                             |
|`ps aux`                                  | Lists all running processes                                                                                        |
|`ps aux \| grep $USER`                    | show all running processes, but limit the output to lines containing your username                                 |

## Others

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`history`                                 | Lists recently used commands                                                                                       |
|`date`                                    | Shows current date and time                                                                                        |
|`cal`                                     | Shows calendar view of the current month                                                                           |
|`lsb_release -a`                          | Check the Ubuntu version                                                                                           |
|`reboot`                                  | Restart/Reboot the computer                                                                                        |
|`sudo poweroff`                           | shut down the system                                                                                               |
|`cat /etc/lsb-release`                    | prints distro information                                                                                          |
|`whereis grub`                            | points to the location of grub                                                                                     |
|`dpkg --print-architecture`               |                                                                                                                    |
|`hostnamectl`                             |                                                                                                                    |


## System

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`uname -a`                                | Prints system information like kernel release date, version, processor type, etc                                   |
|`uname -sr`                               | returns system information                                                                                         |
|`uname -m`                                |                                                                                                                    |
|`who`                                     | Shows the logged-in user                                                                                           |
|`whoami`                                  | Shows the current user's username                                                                                  |
|`who \| wc -l`                            | Displays the count of users currently logged in.                                                                   |

## Others

01. ls – The most frequently used command in Linux to list directories
02. pwd – Print working directory command in Linux
03. cd – Linux command to navigate through directories
04. mkdir – Command used to create directories in Linux
05. mv – Move or rename files in Linux
06. cp – Similar usage as mv but for copying files in Linux
07. rm – Delete files or directories
07. touch – Create blank/empty files
07. ln – Create symbolic links (shortcuts) to other files
08. cat – Display file contents on the terminal
09. clear – Clear the terminal display
10. echo – Print any text that follows the command
11. less – Linux command to display paged outputs in the terminal
12. man – Access manual pages for all Linux commands
13. uname – Linux command to get basic information about the OS
14. whoami – Get the active username
15. tar – Command to extract and compress files in Linux
16. grep – Search for a string within an output
17. head – Return the specified number of lines from the top
18. tail – Return the specified number of lines from the bottom
19. diff – Find the difference between two files
20. cmp – Allows you to check if two files are identical
21. comm – Combines the functionality of diff and cmp
22. sort – Linux command to sort the content of a file while outputting
23. export – Export environment variables in Linux
24. zip – Zip files in Linux
25. unzip – Unzip files in Linux
25. ssh – Secure Shell command in Linux
26. service – Linux command to start and stop services
27. ps – Display active processes
28. kill and killall – Kill active processes by process ID or name
29. df – Display disk filesystem information
30. mount – Mount file systems in Linux
31. chmod – Command to change file permissions
32. chown – Command for granting ownership of files or folders
33. ifconfig – Display network interfaces and IP addresses
34. traceroute – Trace all the network hops to reach the destination
35. wget – Direct download files from the internet
36. ufw – Firewall command
37. iptables – Base firewall for all other firewall utilities to interface with
38. apt, pacman, yum, rpm – Package managers depending on the distro
39. sudo – Command to escalate privileges in Linux
40. cal – View a command-line calendar
41. alias – Create custom shortcuts for your regularly used commands
42. dd – Majorly used for creating bootable USB sticks
43. whereis – Locate the binary, source, and manual pages for a command
44. whatis – Find what a command is used for
45. top – View active processes live with their system usage
46. useradd and usermod – Add new user or change existing users data
47. passwd – Create or update passwords for existing users