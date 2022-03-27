### Java

| Command                                                        |      Description                                                                         |
|----------------------------------------------------------------|------------------------------------------------------------------------------------------|
|`jcmd`                                                          |When jcmd is invoked without any arguments, it prints a list of all running Java processes|
|`jps -lv`                                                       |jps is a useful tool for viewing information about running java processes.                |
|`jps -v`                                                        |                                                                                          |
|`Taskkill /PID PROCESS_ID_OF_RUNNING_APP /F`                    |                                                                                          |
|`echo %JAVA_HOME%`                                              |print environment variable JAVA_HOME                                                      |
|`keytool -list -keystore "%JAVA_HOME%/jre/lib/security/cacerts"`|List Trusted CA Certs. default keystore password "changeit"                               |
|`netstat -aof \`                                                |findstr :8080|Find Process Id of the process using the 8080 port                          |
|`Java -jar springBootProject.Jar`                               |Running Spring Boot Project Jar Build                                                     |
|`Java -jar -Dserver.port=9090 springBootProject.Jar`            |Running Multiple Instances of Spring Boot Project on Different Ports                      |

---

| Command                                                        |      Description                                                                         |
|----------------------------------------------------------------|------------------------------------------------------------------------------------------|
|`sudo update-alternatives --config java `                       |Switch between java versions in a Linux setup.                                            |
