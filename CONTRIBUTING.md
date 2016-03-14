# Git procedure

This project contains two permanent branches: `master` and `develop`. `master` represents the production branch, and only fully tested features should be pushed to this branch. `develop` represents the development branch, and can / will be updated nightly.

## Contributing

When adding new features, contributors should branch off of `develop`. Once changes are completed, they should be pushed to the new branch, and a pull request should be submitted to merge the feature branch into `develop`. The following steps outline the general procedure that should be followed:

### Starting work

1. Make a local copy of the repository.

`git clone https://github.com/Coordinatr/coordinatr.git`

2. Switch to the development branch. Do not work on the production branch.

`git checkout develop`

3. Create a new branch for the feature you will work on.

`git checkout -b FEATURENAME develop`

4. Push your committed changes to your branch.

`git push origin FEATURENAME`


### Merging feature branch into development branch

1. Switch back from your feature branch to the development branch.

`git checkout develop` 
2. Make sure your version of the development branch is up-to-date.

`git pull`

2. Merge your feature branch into the development branch. `--no-ff` causes the merge to always create a new commit object. 

`git merge --no-ff FEATURENAME`

3. Delete the merged feature branch.

`git branch -d FEATURENAME`

4. Update the development branch.

`git push origin develop`


### Merging development branch into master branch

1. Switch to the production branch.

`git checkout master`

2. Merge the development and production branches. Do not delete the development branch.

`git merge --no-ff develop`

3. Update the production branch.

`git push origin master`

## Notes

1. Avoid pushing to master unless you are moving the production branch forwards!
2. Do not delete the development branch even after merging to production!