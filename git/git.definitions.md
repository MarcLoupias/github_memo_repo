# GIT Definitions

## what is git
- a distributed version control system
- a directory content management system
- a tree history storage system
- a stupid content tracker

## concepts

[glossary] (https://git-scm.com/book/commands)

### repository
Named also a *tree* by some git users.
It is the whole history of a project (a directory).
Composed by commits. Each node is a commit.
Created by `git init` command (or by `git clone` if you want to copy an existing repository).
Create a self-sufficient `.git` directory. It means that a simple zip on the repository root directory is enough to backup it.

### remote
A remote is a distant repository (a repo on another computer).

### commit
Also named *revision*.
It is a state of a directory.
Each commit has one ore more parents commit.
Git stores only the difference between current commit state and parents. So a commit = current project state - parents.

### branch
A "branch" is an active line of development. 
The most recent commit on a branch is referred to as the tip of that branch. The tip of the branch is referenced by a branch head, which moves forward as additional development is done on the branch.

### tag
A ref pointing to a tag or commit object. In contrast to a head, a tag is not changed by a commit.

### merge
`git merge` is the action of merging a source branch in a destination branch.

If the destination branch have not diverged from the root of the source branch, the merge is a fast-forward.
```
-- M1
    \            
     B1 - B2 - B3
```

At the end, the two branches will points on the same commit.
```
-- M1 - B1 - B2 - B3
```

If the destination branch have diverged from the root of the source branch, 
```
-- M1 - M2 
    \            
     B1 - B2 - B3
```

git will create a merge commit containing all the modifications.
```
-- M1 - M2 - - - M3
    \            /
     B1 - B2 - B3
```

### rebase
`git rebase` allows user to rewrite the history.
```
-- M1 - M2 
    \            
     B1 - B2 - B3
```

At this point, instead of merging, we can rewrite our branch history, the goal is to set the B1 parents to M2 instead of M1 :
```
-- M1 - M2 
         \         
         B1 - B2 - B3
```

Now we can run a fast-forward merge to keep a clean linear history :
```
-- M1 - M2 - B1 - B2 - B3
```

### fetch
`git fetch` is the action to update a given remote repository data locally. (you have a local occurrence of all the remote you have added to your remote list).

### pull
`git pull <remote-name> <branch-name>` runs a `git fetch` on the given remote then a `git merge` on the local branch from the remote branch.

### push
Obviously, write access is mandatory on the remote
`git push <remote-name> <branch-name>` write the local branch commits on the remote branch.
The history must be clean enough to allow a fast forward or git will reject the push.


