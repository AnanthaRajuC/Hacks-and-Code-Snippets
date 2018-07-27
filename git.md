# git


- `git init` creates a new git repository
- `git clone /path/to/repository` create a working copy of a local repository
- `git clone username@host:/path/to/repository` when using a remote server

---

local repository consists of three **trees** maintained by git
- **Working Directory** which holds the actual files
- **Index** is the staging area
- **HEAD** points to the last commit 

---

local workflow

- `git add <filename>` add a single changed file to staging area (**Index**)
- `git add *` add all changed files to staging area (**Index**)
- `git commit -m "Commit message"` commit the changed files to **HEAD**

---

pushing changes

- `git push origin master`send the changes to your remote repository (Change **master** to whatever **branch** you want to push your changes to)
- `git remote add origin <server>` If you have not cloned an existing repository and want to connect your repository to a remote server

---

branching

- **Branches** are used to develop features isolated from each other.
- **master** branch is the "default" branch in a repository.
- other branches are used for development and merged back to the master branch upon completion.

- `git checkout -b feature_x` create a new branch named "feature_x" and switch to it using
