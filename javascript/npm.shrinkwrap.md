
[from what-is-npm-shrinkwrap-and-when-is-it-needed : javascript.tutorialhorizon.com] (http://javascript.tutorialhorizon.com/2015/03/21/what-is-npm-shrinkwrap-and-when-is-it-needed/)

The `npm shrinkwrap` command lets you lock down the version numbers all the packages and their descendant packages in your `node_modules` directory. Lets examine why and when you should be using this command in your application development.

The npm package manager does a pretty good job at maintaining and installing dependencies for all the packages your project requires. It does so by installing a hierarchy of packages in the `node_modules` directory.

There are 2 main problems with the way `npm install` works

1. Although npm recommends using [semver] (https://github.com/npm/node-semver) for application versioning, it is completely upto the package author to honor this rule. This can be problematic if the package you depend on does not follow semver and a newer version of the package has breaking changes.
Even if the package author follows semver, there is still a probability that a bug might get introduced in a compatible version.
2. The other issue arises due to the way `npm install` works. Since running an `npm install` install a hierarchy of packages to be installed, if you wished to manually control the version numbers of the packages that you want to be installed, you could do that by using the exact version numbers in your `package.json`. However that only solves the problem for the direct dependents of your package. It does not give you control over the installed versions of the deeply nested packages that are the dependencies of your dependencies and beyond.

This can be crucial to you in a production environment because you need to ensure that each production re-deployment always always installs the same versions of the package as the other deployments.

This is where `npm shrinkwrap` comes into play. When you run `npm shrinkwrap` in a project after running `npm install`, it creates a file called `npm-shrinkwrap.json` which lists the exact package versions of all the installed packages in the entire hierarchy. If you check this into your version control and your collegue clones and does an `npm install`, then this time they will get the exact package version for the full hierarchy as specified in the `npm-shrinkwrap.json` file.

In order to update your `npm-shrinkwrap.json` file, you would need to run `npm update <package_name>`, thereby specifying the exact package that needs to be updated and then re-run `npm shrinkwrap` to updated your `npm-shrinkwrap.json` file.

If you need to find out which packages have become outdated, simply run

`npm outdated`

The above command will simply read the repository and inform you of any outdated packages. You can then examine them and decide whether or not you want to include them in production after thoroughly testing them.

Also note that by default `npm shrinkwrap` does not include your `devDependencies` unless you pass run it with the `-–dev` flag.

`npm shrinkwrap --dev`

