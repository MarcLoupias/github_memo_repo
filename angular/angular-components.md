# angular components

## guides

[angular official component devguide](https://docs.angularjs.org/guide/component)

## best practices

[Todd Motto best practices](https://github.com/toddmotto/angularjs-styleguide#components)

## feedback

### NG 1.5 from the trenches at velesin.io

- 1/7 [Starting a new app in Angular 1.5 – does it make sense?](https://velesin.io/2016/04/14/starting-a-new-app-in-angular-1-5/)
- 2/7 [Angular 1.5 app as a tree of components](https://velesin.io/2016/04/26/angular-1-5-app-as-a-tree-of-components/)
- 3/7 [Communication between Angular 1.5 components (and with the API)](https://velesin.io/2016/05/18/communication-between-angular-1-5-components/)
- 4/7 [A flexible Angular 1.5 project structure (the "fractal" architecture)](https://velesin.io/2016/05/31/angular-1-5-fractal-project-structure/)
- 5/7 [Writing Angular 1.5 project in ES6/ES2015](https://velesin.io/2016/07/12/angular-1-5-project-in-es6-es2015/)
- 6/7 [Unit testing Angular 1.5 components – a detailed guide](https://velesin.io/2016/08/23/unit-testing-angular-1-5-components/)
- 7/7 E2E testing of component-oriented Angular 1.5 app [COMING SOON]

## inter-component communication

### practices overview

src [Angular 1.5. Components communication. Best practice : stackoverflow.com](http://stackoverflow.com/questions/41070446/angular-1-5-components-communication-best-practice)

> I'm using Angular 1.5.9.

> Right now I have two components which need to communicate. If I change something in the first one (for example choose item in the list) => second one needs to be changed (item that was chosen needs to be displayed) and vice versa (changing in the second one => change in the first one) I have read about a lot of approaches, so I can manage this in few ways:

> 1. Communication via shareable Service
> 2. Using two way data binding ("=" option in component bindings). Example: https://jsfiddle.net/peter_drinnan/t4q4nrfp/27/
> 3. Using one way data binding with input/output approach. Example: http://stackoverflow.com/questions/36033940/how-to-pass-data-between-child-components-in-angular-1-5-not-using-scope
> 4. Using "require" (some parent component to share data). Example: http://stackoverflow.com/questions/36645065/component-communication-in-angular-1-5

> Maybe I miss something? What is the best practice?

> Thank you.

### component design

#### avoid event bubbling & extraneous props

[Angular Component Design: How to Avoid Custom Event Bubbling And Extraneous Properties in the Local Component Tree](http://blog.angular-university.io/angular-component-design-how-to-avoid-custom-event-bubbling-and-extraneous-properties-in-the-local-component-tree/)

2 big flaws :
- Custom Event Bubbling
- Extraneous Properties (input are props so if tree is deeper then 2 comps, there is lots of props passing through for nothing)

#### cross component communication design comparison

[AngularJS: Cross Component Communication](http://www.aurorasolutions.io/blog/angularjs-cross-component-communication/)
    	
- Communicating with inherited scopes
- Communicating with events  	
- Communicating with services

#### event based design is cancer

Events are no more then GOTO in an asynchronous context. (<- assert by me)

[GOTO still considered harmful? : stackoverflow.com](http://stackoverflow.com/questions/46586/goto-still-considered-harmful)

### articles

[Parent component trigger function in child component](https://github.com/toddmotto/angularjs-styleguide/issues/156)

[component communication and triggers](https://github.com/toddmotto/angularjs-styleguide/issues/90)



[Angular components communication : dfsq.info](http://dfsq.info/site/read/angular-components-communication)