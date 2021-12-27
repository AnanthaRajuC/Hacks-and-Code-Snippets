# Linux Commands

## Files and Directories

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`pwd`                                     | Shows Present Working Directory                                                                                    |
|`ls`                                      | List all files, directories in the current working directory (Doesn't list hidden/dot files)                       |
|`ls -a`                                   | List all files, directories in the current working directory including the hidden/dot files                        |
|`ls -al`                                  | List all files, directories in the current working directory including the hidden/dot files with additional details|
|`cd`                                      | Navigates back to home directory                                                                                   |
|`cat [FILE_NAME]`                         | Displays the contents of the file                                                                                  |
|`echo "[TEXT]"`                           | Displays the **TEXT** on the screen                                                                                |
|`echo "[TEXT]" -> [FILE_NAME.FILE_FORMAT]`| save the **TEXT** in a with the given **FILE_NAME** and **FILE_FORMAT**                                            |
|`touch [FILE_NAME.FILE_FORMAT]`           | Creates a new file with the given **FILE_NAME** and **FILE_FORMAT**                                                |
|`mkdir [DIRECTORY_NAME]`                  | Creates a new directory with the given **DIRECTORY_NAME**                                                          |
|`rmdir [DIRECTORY_NAME]`                  | Removes the directory with the given **DIRECTORY_NAME**                                                            |
|`rm [FILE_NAME]`                          | Removes the file with the given **FILE_NAME**                                                                      |
|`lsblk -f`                                | displays block devices, when used with the -f option, it prints file system type on partitions as well             |
|`nano [FILE_NAME.FILE_FORMAT]`            | Creates a new file with the given **FILE_NAME** and **FILE_FORMAT** in nano text editor.                           |

## Processes

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`ps`                                      | Lists current user's running processes                                                                             |
|`ps aux`                                  | Lists all running processes                                                                                        |
|`ps aux \| grep $USER`                     | show all running processes, but limit the output to lines containing your username                                 |

## Users

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`who`                                     | Shows the logged-in user                                                                                           |
|`whoami`                                  | Shows the current user's username                                                                                  |
|`who \| wc -l`                             | Displays the count of users currently logged in.                                                                   |

## Others

|                          Command         |                         Description                                                                                |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------| 
|`history`                                 | Lists recently used commands                                                                                       |
|`date`                                    | Shows current date and time                                                                                        |
|`cal`                                     | Shows calendar view of the current month                                                                           |
|`lsb_release -a`                          | Check the Ubuntu version                                                                                           |
|`reboot`                                  | Restart/Reboot the computer                                                                                        |
|`uname -a`                                | Prints system information like kernel release date, version, processor type, etc|

## Update

|       Command         |                         Description                                                                                                                                                      |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| 
|`apt update`           | Fetches only the information on latest packages that can be upgraded                                                                                                                     |
|`apt list –upgradable` | Display the packages that have updates available and therefore can be upgraded on the system.                                                                                            |
|`apt upgrade`          | The actual command that does the upgrade of the packages in the system. This command can install new packages if the dependencies require it, but it will never remove packages.         |
|`apt full-upgrade`     | In addition to upgrading new packages and installing new packages as required, it also removes existing installed packages if it determines that the dependencies are no longer required.|
|`apt autoremove`       | Removes unused packages which are no longer needed by the dependent packages. This can be executed after `apt upgrade`                                                                   |








