
#### Scope must read

- [docs.angularjs.org scope] (https://docs.angularjs.org/guide/scope)
- [$rootScope.Scope] (https://docs.angularjs.org/api/ng/type/$rootScope.Scope)
- [better doc then thie official one] (http://angular-tips.com/blog/2013/08/watch-how-the-apply-runs-a-digest/)
- [the-three-watch-depths-of-angularjs] (http://teropa.info/blog/2014/01/26/the-three-watch-depths-of-angularjs.html)
- [angularjs-watch-digest-and-apply] (http://www.benlesh.com/2013/08/angularjs-watch-digest-and-apply-oh-my.html)
- [databinding-in-angularjs with MiskoH comments] (http://stackoverflow.com/questions/9682092/databinding-in-angularjs)
- [nuances-of-scope-prototypal-prototypical-inheritance-in-angularjs] (http://stackoverflow.com/questions/14049480/what-are-the-nuances-of-scope-prototypal-prototypical-inheritance-in-angularjs/14049482#14049482)

#### $digest already in progress issue
- [Anti-Patterns] (https://github.com/angular/angular.js/wiki/Anti-Patterns)
- [why-is-using-ifscope-phase-scope-apply-an-anti-pattern] (http://stackoverflow.com/questions/22346990/why-is-using-ifscope-phase-scope-apply-an-anti-pattern)

#### EvalAsync() or setTimeOut()
- [scope-evalasync-vs-timeout-in-angularjs] (http://www.bennadel.com/blog/2605-scope-evalasync-vs-timeout-in-angularjs.htm)
- **EvalSync** is to put your thing in the angular loop
- **TimeOut** is to delay your thing outside and probably after the angular loop
- [angularjs-evalasync-vs-timeout] (http://stackoverflow.com/questions/17301572/angularjs-evalasync-vs-timeout)
- if code is queued using `$evalAsync` from a directive, it should run after the DOM has been manipulated by Angular, but before the browser renders
- if code is queued using `$evalAsync` from a controller, it should run before the DOM has been manipulated by Angular (and before the browser renders) -- rarely do you want this
- if code is queued using `$timeout`, it should run after the DOM has been manipulated by Angular, and after the browser renders (which may cause flicker in some cases)

#### Scope dirty checking
- [the-three-watch-depths-of-angularjs] (http://teropa.info/blog/2014/01/26/the-three-watch-depths-of-angularjs.html)
- Angular is doing references comparisons when checking model changes.
- All binding done with {{}}, ng-model etc ... set a reference check.
