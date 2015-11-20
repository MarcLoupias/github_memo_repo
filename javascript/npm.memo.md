
### links

- [npm basic commands] (http://dreamerslab.com/blog/en/npm-basic-commands/)
- [10 Cool Things You Probably Didn’t Realize npm Could Do] (http://blog.izs.me/post/1675072029/10-cool-things-you-probably-didnt-realize-npm)


### semver

[semver to manage scopes in package.json] (https://docs.npmjs.com/misc/semver)
- semver : `<major>.<minor>.<patch>`
- [caret range] (https://www.npmjs.com/package/semver#caret-ranges-1-2-3-0-2-5-0-0-4) keep major, change minor & patch
- [tilde range] (https://www.npmjs.com/package/semver#tilde-ranges-1-2-3-1-2-1) keep major & minor, only patch update


### command list

```
# list globally installed package by name
npm -list -g <package_name>
```

```
# list locally installed package by name
npm -list <package_name>
```

```
# view version on repository
npm view <package_name> version
```

```
# display npm config
npm config list -ls
```
