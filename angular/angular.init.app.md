
### Angular app init & loader management

[sending event when angular finished loading] (http://stackoverflow.com/questions/14968690/sending-event-when-angular-js-finished-loading)
[les fondations de AngularJS] (http://blog.xebia.fr/2013/10/14/les-fondations-dangularjs/)

#### Bootstrap d'une app web

1. Le browser lève l'event [DOMContentLoaded] (https://developer.mozilla.org/en-US/docs/Web/Reference/Events/DOMContentLoaded ) durant ce step.
Le moment exact est aléatoire, il n'attend pas le chargement des ressources liées à la page.

2. Le browser lève l'event [load] (https://developer.mozilla.org/en-US/docs/Web/Reference/Events/load) en fin de step.
Toutes les dépendances (de la page d'index) sont chargées.

3. Démarrage Angular
config() de tous les modules dans l'ordre inverse de l'arbre
puis
run() de tous les modules dans le même ordre que pour config()
puis
le controller du module principal définit dans ng-app

Ex : on a la hiérarchie suivante :
```
app
app.moduleA
app.moduleA.subModuleA1
app.moduleB
```

l'ordre d'exécution sera :

```
app.moduleB
app.moduleA.subModuleA1
app.moduleA
app
```

ou

```
app.moduleA.subModuleA1
app.moduleA
app.moduleB
app
```

mais jamais 

```
app.moduleA
app.moduleA.subModuleA1
app.moduleB
app
```

##### Documentation à check :
- [ng dev guide - module] (https://docs.angularjs.org/guide/module)
- [ng dev guide - bootstrap] (https://docs.angularjs.org/guide/bootstrap)
- [angular.module] (https://docs.angularjs.org/api/ng/function/angular.module)
- [ngView] (https://docs.angularjs.org/api/ngRoute/directive/ngView)
- [$location] (https://docs.angularjs.org/api/ng/service/$location)

#### knowing when the a view has finished loading

[not possible because of MVVM pattern] (http://stackoverflow.com/questions/14368097/execute-function-after-page-has-finished-downloading-and-bootstrapping)

#### others topics
- [Misko Hevery comment on an angular github issue] (https://github.com/angular/angular.js/issues/1306#issuecomment-8200414)
- [is there a post render callback for angular directive] (http://stackoverflow.com/questions/11125078/is-there-a-post-render-callback-for-angular-js-directive)
- [how to invoke a function in an angular directive after the child nodes have been processed] (http://stackoverflow.com/questions/15932771/how-to-invoke-a-function-in-an-angular-directive-after-the-child-nodes-have-been/15946913#15946913)
