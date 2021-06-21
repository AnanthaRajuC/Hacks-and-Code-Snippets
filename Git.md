# Git

## Initialization

|               Command                       |                     Description                                    |
|---------------------------------------------|--------------------------------------------------------------------|
|`git init`                                   | Initializes a new git repository.                                  |
|`git clone /path/to/repository`              | Create a working copy of a local repository.                       |
|`git clone username@host:/path/to/repository`| Create a working copy of a remote repository.                      |

---

## Local workflow

|               Command                       |                     Description                                    |
|---------------------------------------------|--------------------------------------------------------------------|
|`git add <filename>`                         | Adds a single changed file to staging area (Index).                |
|`git add *`                                  | Adds all changed files to staging area (Index).                    |
|`git commit -m "Commit message"`             | commit the changed files in staging area to HEAD                   |

---

## Pushing Changes

|         Command         |                     Description                                                                                       |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------|
|`git push origin master` | Push the changes to your remote repository (Change **master** to whatever **branch** you want to push your changes to)|

---

## Remote

|         Command         |                     Description                    |
|-------------------------|----------------------------------------------------|
|`git remote show origin` | Find the URL of the remote repository.             |
|`git remote -v`          | List all currently configured remote repositories. |

---

## Git Log

|         Command                             |                     Description                                                               |
|---------------------------------------------|-----------------------------------------------------------------------------------------------|
|`git log`                                    | Displays repository commit history.                                                           |
|`git log --author=[AUTHOR_NAME]`             | Displays only the commits of a certain author.                                                |
|`git log --pretty=oneline"`                  | Displays a very compressed log where each commit is one line.                                 |
|`git log --oneline --decorate`               | Output with one commit per line.                                                              |
|`git log --graph --oneline --decorate --all` | Displays an ASCII art tree of all the branches, decorated with the names of tags and branches.|
|`git log --name-status`                      | Displays only which files have changed                                                        |
|`git log --pretty="- %s" > CHANGELOG.md"`    | Save changelog to file.                                                                       |




















