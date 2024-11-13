# 1 Induction to Git

# 2 Git Basics

## 2.1 Initializing a Repository in an Existing Directory

```bash
cd /home/user/my_project

git init  # This creates a new subdirectory named .git that contains all of your necessary repository files — a Git repository skeleton.

echo "# repository_name" > README.md
git commit -m "Initial project version"
```


```bash
git branch -M main
git remote add origin git@github.com:x41v3r/learning_demos.git
git push -u origin main
```

## 2.2 Cloning an Existing Repository

```bash
git clone https://github.com/libgit2/libgit2
```



