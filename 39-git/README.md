# Ye Olde Git Workshoppe

---

- What is Git? No, really, what is it?
  - Git is a **version control system** (VCS)
  - Essentially, `git` allows us to travel through time by creating a series of **snapshots**. These snapshots are called `commits`. You can view your commits by calling `git log` from your terminal. You can supply an optional number of commits; `git log -n 4 --oneline`, will give you the 4 most recent commit messages and condense each commit to one line:

```sh
// 🌚🍔 git log -n 4
9c8360d add user validation for unique username (Andrew Cohn, 4 minutes ago)
f7a92f0 create cart controller (Andrew Cohn, 21 hours ago)
f7a92f0 thx mozilla 😍 (Andrew Cohn, 21 hours ago)
41b84c0 minor grammar fixes in README.md (Andrew Cohn, 21 hours ago)
```

Pay attention to the structure of logs here:
`f7a92f0 thx mozilla 😍 (Andrew Cohn, 21 hours ago)`

- Commits begin with a [SHA](https://en.wikipedia.org/wiki/Cryptographic_hash_function), or hashed data about the commit. It is, essentially, a commit id: `f7a92f0`
- Secondly, we'll find the commit message: `thx mozilla 😍`
- Finally, the author of the commit and the timestamp: `(Andrew Cohn, 21 hours ago)`

---

#### Creating a New Snapshot (Commit)

- As I continue working on my new feature in my application, I can create new snapshots whenever I want to save my progress:

  - First I'll call `git status` to see which files I've updated since my last `commit`:

```sh
// 🌚🍔 git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
```

- Git will tell me that I've changed a file called `README.md`: `modified: README.md`
- If I want to create a new shapshot of these changed files, I'll have to add them to the "staging area"––the pre-commit stage. Staging files is basically preparing them to be committed:
- `$ git add git add README.md` OR `$ git add .` to add all of my changed files to the staging area, or pre-commit zone. **ALSO NOTE** files that are not tracked by git can be tracked using the `$ git add` command: `$ git add README.md`.
  - Files tracked by `git` are files that I care about taking snapshots of. You may have seen a file in your labs/rails projects called `.gitignore`. This is an automatically generated file that tells `git` to ignore changes to certain files like your rails cache and development logs.
- Issuing `$ git status` again will tell me which tracked files have been added to the staging area:

```sh
// 🌚🍔 git status
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md
```

- I can also compare my staged files against my last commit: `git diff --staged`. `git` will tell me the **difference** `diff` between my last commit and the files currently in the staging area:

```sh
// 🌚🍔 git diff --staged
diff --git a/25-README.md b/25-README.md
index bb9f69b..4aeeaa8 100644
--- a/25-README.md
+++ b/25-README.md
@@ -1,8 +1,85 @@
+
+- What is Git?
+  - Git is a version control system (VCS)
+  - Essentially, Git allows us to travel through time
+
```

- If these changes look good, I can create a new commit and save these in my project snapshot history: `$ git commit -m "describe commit messages in README.md"`
- Calling `$ git status` again will tell me that I've created a new commit but have not yet pushed it to the remote:

```sh
// 🌚🍔 git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
```

---

# What is the Remote on Git?

- There are **TWO COPIES** of my project. One on my machine, and another on GitHub. I can publish my project to GitHub so collaborators can copy my changes onto their machines and continue developing.
- Calling `git remote -v` will tell me the location of the remote repo:

```sh
// 🌚🍔 git remote -v
origin	git@github.com:learn-co-students/nyc-web-080618.git (fetch)
origin	git@github.com:learn-co-students/nyc-web-080618.git (push)
```

- Whenever I `$ git push`, my local changes will be sent to the remote repository specified by `origin  git@github.com:learn-co-students/nyc-web-080618.git (push)
`

---

# Working with Collaborators and Branching

- `git` allows us to diverge or _branch_ from our code at a particular point in time so that we can continue to work on features **without introducing any breaking changes into our working master branch**. You may have heard that `master` should always be broken or should never have broken code. The `master` branch should ideally have fully working features and be even with the deployed version of your application.
- Branching allows us to write and test code without introducing potential bugs into the deployed `master` branch:

- To checkout a new branch: `$ git checkout -b new-comment-form`. This command tells git to create a new branch and switch to it. Typically, branches are named according to the new functionality they intend to introduce.

- If I want to see all of the branches that I currently have _locally on my machine_: `$ git branch`
- If I want to switch from my current branch to another branch: `$ git checkout master`. Notice that without the `-b` flag, git will not attempt to create a new branch and will instead switch to an already existing branch.
- If one of my collaborators recently pushed changes to GitHub, I can use `$ git fetch origin` to copy those changes onto my machine.
- If I want to fetch changes and merge them into my current branch, I can use `$ git pull`. Alternatively, I can use `$ git fetch origin` and `$ git merge origin/master` to first pull down all the changes made to the `master` branch on GitHub and merge them into my current working branch.

---

![git branch diagram via atlassian](https://wac-cdn.atlassian.com/dam/jcr:746be214-eb99-462c-9319-04a4d2eeebfa/01.svg?cdnVersion=kl)


---

#### Checking Out an Older Commit

Remember how we said `git` allows us to "travel through time?"
If I call `git checkout 41b84c0` I can view the state of my project at this particular point in time:

```sh
// 🌚🍔 git checkout 41b84c0
M	25-README.md
Note: checking out '41b84c0'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

git checkout -b <new-branch-name> []

HEAD is now at 41b84c0 THE WINDOW OBJECT
```

- If I want to go back to my most recent commit, I can call `git checkout master` or whatever branch I was working on. This will point my HEAD back at my most recent commit.

---

## Additional Resources:

- [Git Wikipedia Page](https://en.wikipedia.org/wiki/Git)
- [What is GitHub YouTube video](https://www.youtube.com/watch?v=w3jLJU7DT5E)
- [Git Course on Codecademy](https://www.codecademy.com/learn/learn-git)
- [Visualizing Git by GitHub](http://git-school.github.io/visualizing-git/)
- [Resources for Learning Git by GitHub](https://try.github.io/)
- [Using Git Branches via Atlassian](https://ko.atlassian.com/git/tutorials/using-branches)

---

![Git Cheet Sheet](https://www.git-tower.com/blog/content/posts/54-git-cheat-sheet/git-cheat-sheet-large01.png)
