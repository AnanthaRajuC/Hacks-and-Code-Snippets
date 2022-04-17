## Installation

| Command              |     Description             |
|----------------------|-----------------------------|
|`ghost install local` |                             |

- https://ghost.org/docs/install/local/  

## Lifecycle

| Command     |     Description             |
|-------------|-----------------------------|
|`ghost stop` |stop Ghost.                  |
|`ghost start`|start Ghost.                 |
|`ghost log`  |views logs.                  |
|`ghost ls`   |list all running Ghost blogs.|


Ghost serves traffic on port `2368`. The host  is `127.0.0.1`.

## Scrapping a ghost site into a static file system

wget -r -nH -p docs -E -T 2 -np -k http://localhost:2368/  


