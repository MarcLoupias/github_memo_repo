# git workflow

## differents sources for brainstorming
- [standard git workflow] (http://nvie.com/img/git-model@2x.png)
- [differents workflow comparison] (https://www.atlassian.com/git/tutorials/comparing-workflows)
- [Understanding the GitHub Flow] (https://guides.github.com/introduction/flow/)
- [GitLab workflow] (http://doc.gitlab.com/ee/workflow/gitlab_flow.html)
- [Shared repository workflow] (https://gist.github.com/seshness/3943237)
- [Feature driven development] (https://en.wikipedia.org/wiki/Feature-driven_development)

## merging strategy
In a **CI strategy** you can merge in master at the start of the day to prevent painful merges at a later time.
In a **synchronization point strategy** you only merge in from well defined points in time, for example a tagged release.

### synchronization point strategy
Based on [an email from Linus Torvalds] (https://www.mail-archive.com/dri-devel@lists.sourceforge.net/msg39091.html) about merging strategy for linux dev.

#### TLDR
Goals : I want clean history, but that really means (a) clean and (b) history.

##### clean
- People can (and probably should) rebase their _private_ trees (their own work). That's a _cleanup_.
- But never other peoples code. That's a "destroy history".

##### history
- Keep your own history readable
- Don't expose your crap.
- Don't merge _upstream_ (ie : pull) code at random points.
- Don't merge _downstream_ (ie : push) code at random points either.

### Continuous Integration strategy
Based on [Martin Fowler quotes] (http://martinfowler.com/bliki/FeatureToggle.html) in [gitlab documentation] (http://doc.gitlab.com/ee/workflow/gitlab_flow.html#do-not-order-commits-with-rebase).
> If your feature branches commonly take more than a day of work, look into ways to create smaller units of work and/or use feature toggles.

##### pros
- merge your work every day
- pull others work every day
- CI oriented
- painless merge
- easier for devs to handle

##### cons
- feature flipping is mandatory to be able to deliver a clean product
- history is fucked up
