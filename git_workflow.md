# My Personal Git Workflow

### Overview

This is a fork based workflow.  When I want to make a change to a repository:

1. Fork the repository on Github `[fork] button`
2. Clone the repository locally `git clone git@github.com:...`
3. Create a branch locally `git checkout -b branch-name`
4. Make the change `emacs foo`
5. Commit the change `git add .; git commit -m "change description"`
6. Add the description of my remote repsitory to my local repository `git remote add nordsieck git@github.com:...`
7. Push my branch to the remote repository `git push nordsieck branch-name`
8. Create a pull request `[Compare & pull request] button`
9. Merge `[merge] button`

### Remotes

Only one remote in my local repository has a special name.  The remote that represents the "repository of truth" is called `origin`.  All other remotes are named so that I can easily remember them.  Since almost all of the remotes I deal with are hosted on Github, I just use the Github user name as the name of the remote e.g. if the remote is at address `git@github.com:foo/bar`, I call the remote `foo`.