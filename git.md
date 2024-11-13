# 1 Induction to Git

# 2 Git basics

## 2.1 Getting a Git repository

### 2.1.1 Initializing a repository in an existing directory

```bash
cd /home/user/my_project

git init  # this creates a new subdirectory named ".git" that contains all of the necessary repository files — a Git repository skeleton.

echo "# repository_name" > README.md
git add *

git commit -m "Initial project version" # this commits the changes to the local repository
```

### 2.1.2 Cloning an existing repository

```bash
git clone https://github.com/libgit2/libgit2
```






## 2.2 Recording Changes to the Repository

![git-files-status-lifecycle](./assets/git-files-status-lifecycle.png)





