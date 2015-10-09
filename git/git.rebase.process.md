[see also] (http://labs.excilys.com/2012/02/28/preparez-vous-a-reecrire-lhistoire-avec-git-rebase/)

When working on a feature branch, i want to get updates added to the main branch by others dev.
**It is mandatory to rebase main-branch in feature-branch before pushing feature-branch to origin.**
If there is other people working on feature branch, it is also mandatory to `git pull --rebase=preserve`
on the feature-branch first !

NB : This workflow is to update feature-branch on origin, not to update main-branch

#### Workflow is

1. Work on my feature-branch (created from main-branch)
2. Others people add code on main-branch AND on feature-branch
3. Work step is done on feature-branch, i commit, i rebase all my commits **locally** to build a clean history
4. `git pull --rebase=preserve origin feature-branch` (to sync with others dev work on my working branch)
5. THEN i want to add others contrib :

```
# we are on feature-branch, go to main-branch, update it with :
git checkout main-branch
git pull --rebase=preserve origin main-branch

git checkout feature-branch

git rebase main-branch

# resolve conflicts then commit WITHOUT ANY MSG
git commit

# finish the rebase
git rebase --continue

# when done, you can push
git push origin feature-branch
```
