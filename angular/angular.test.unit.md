
### Angular Unit Tests

#### tools
- [karma runner] (http://karma-runner.github.io/0.13/index.html)
- [jasmine] (http://jasmine.github.io/)
- [PhantomJS] (http://phantomjs.org/)
- [karma-htmlfile-reporter] (https://github.com/matthias-schuetz/karma-htmlfile-reporter)
- [karma-junit-reporter] (https://github.com/karma-runner/karma-junit-reporter)
- [karma & jenkins] (http://karma-runner.github.io/0.12/plus/jenkins.html)

#### best articles 
- [angular-tips.com : unit-test] (http://angular-tips.com/blog/categories/unit-test/)

#### best lib (ng-describe)
- [ng-describe] (https://github.com/kensho/ng-describe)

#### tests avec $http
- [les-tests-angularjs-le-guide-de-a-a-z] (http://blog.occitech.fr/2013/10/les-tests-angularjs-le-guide-de-a-a-z-partie-1-les-tests-unitaires/)

#### tests de services
- [how-do-i-test-an-angularjs-service-with-jasmine] (http://stackoverflow.com/questions/13013772/how-do-i-test-an-angularjs-service-with-jasmine)

#### Dependencies mocking
- [mocking-angular-module-dependencies] (http://stackoverflow.com/questions/17554727/mocking-angular-module-dependencies-in-jasmine-unit-tests)
- [injecting-a-mock-into-an-angularjs-service] (http://stackoverflow.com/questions/14773269/injecting-a-mock-into-an-angularjs-service/18756347#18756347)
- [divers] (http://www.sitepoint.com/mocking-dependencies-angularjs-tests/)
- [Dummy, Fake, Stub, Mock et Spy, les tests unitaires avec l'aide de Moq] (http://blog.softit.fr/post/dummy-fake-stub-mock-et-spy-les-tests-unitaires-avec-l-aide-de-moq)

#### article sur les test
- [introduction-aux-tests-unitaires-en-javascript] (http://blog.xebia.fr/2013/03/21/introduction-aux-tests-unitaires-en-javascript/)
- [Les 10 commandements des tests unitaires] (http://blog.xebia.fr/2008/04/11/les-10-commandements-des-tests-unitaires/)
- [rater-ses-tests-unitaires-en-toutes-circonstances] (http://blog.soat.fr/2013/11/10-trucs-infaillibles-pour-rater-ses-tests-unitaires-en-toutes-circonstances-22/)

#### Testing a throw exception :

```javascript
it('throws exception when args are undefined or null', inject(function (HistoryLRindexService) {
  expect(function(){HistoryLRindexService.addIndexElement(undefined, 'toto');})
    .toThrowError('HistoryLRindexValueFactory.addIndexElement(key, data) error : key null or undefined');
}));
```

- use anonymous function for the call
- use `toThrowError(exceptionMsg)` [matcher from Jasmine] (http://jasmine.github.io/2.3/introduction.html#section-Included_Matchers)

- your impl should be something like that :
```javascript
if(!key) {
  throw new Error('HistoryLRindexValueFactory.addIndexElement(key, data) error : key null or undefined');
}
```
