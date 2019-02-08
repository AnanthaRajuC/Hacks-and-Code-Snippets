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
- **master** branch is the **default** branch in a repository.
- other branches are used for development and merged back to the master branch upon completion.

- `git checkout -b feature_x` create a new branch named **feature_x** and switch to it using
- `git checkout master` switch back to master branch
- `git branch -d feature_x` delete the **feature_x** branch
- `git push origin <branch>` push from local to remote **branch**

---

`git pull` update your local repository to the newest remote commit

---

tagging

- `git tag 1.0.0 1b2e1d63ff` create a new tag named <a href="https://semver.org/" target="_blank" >1.0.0</a> where 1b2e1d63ff stands for the first 10 characters of the commit id you want to reference with your tag

---

log

- `git log` displays repository commit history
- `git log --author=bob` displays only the commits of a certain author
- `git log --pretty=oneline` displays a very compressed log where each commit is one line
- `git log --graph --oneline --decorate --all` displays an ASCII art tree of all the **branches**, decorated with the names of **tags** and **branches**
- `git log --name-status` displays only which files have changed
- `git log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s"`
- `git log --all --decorate --oneline --graph`

---

others

- `git log --help` opens a local git-log manual (html) page
- `gitk` opens a built-in git GUI desktop application
- `git config --global commit.template ~/.gitmessage.txt` tell git to use `gitmessage.txt` as the default message that appears in your editor when you run git commit

---

examples

- `git log --oneline -5 --author cbeams --before "Fri Mar 26 2009"`
- `git config --global commit.template C:\CC_Applications/gitmessage.txt`

---

### Reference

- <a href="https://github.com/k88hudson/git-flight-rules" target="_blank" >Flight rules for Git </a>- a guide for programmers using Git about what to do when things go wrong
- <a href="https://nvie.com/posts/a-successful-git-branching-model/" target="_blank" >A successful Git branching model</a>
- <a href="https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html" target="_blank" >A Note About Git Commit Messages</a>
- <a href="https://nvie.com/posts/a-successful-git-branching-model/" target="_blank" >Pro Git</a> by <a href="http://scottchacon.com/about.html" target="_blank" >Scott Chacon</a> and Ben Straub is available to read online for free and download (PDF, EPUB, MOBI).
