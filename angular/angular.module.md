### AngularJs Modules

ref [angular.module] (https://docs.angularjs.org/api/ng/function/angular.module)

recommandations :
- [John Papa @ ng-module] (https://github.com/johnpapa/angular-styleguide#modules)

[module dep naming clash] (http://stackoverflow.com/questions/30374934/angularjs-module-dependencies-naming-clash/30376123#30376123)

#### angular.module === namespace ?

***NO***

- [This AngularJS modules/dependencies thing is a lie] (http://michalostruszka.pl/blog/2015/05/21/angular-dependencies-naming-clash/)
- [Hack for target a precise component in a precise module] (http://stackoverflow.com/questions/30374934/angularjs-module-dependencies-naming-clash/30376123#30376123)
(encapsulate the service u want with another service who call a new injector set to the right module only)
- 
