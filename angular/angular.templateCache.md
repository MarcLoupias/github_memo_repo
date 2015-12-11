## [$templateCache] (https://code.angularjs.org/1.4.8/docs/api/ng/service/$templateCache)

Quand angular voit un templateUrl dans une route ou une directive, il va requêter le serveur pour retrouver le fichier html. 
Une fois qu'il l'a récupéré, il place ce template sous forme de string dans le service $templateCache.
Chaque fois suivante ou angular aura besoin d'accéder à ce template, il va recharger le template depuis $templateCache.
Ce qui évite de multiples connexions réseau inutiles.

Une bonne pratique consiste à populer $templateCache au build de l'application via un module gulp ([gulp-angular-templatecache] (https://github.com/miickel/gulp-angular-templatecache)).
Ainsi il n'y aura aucun accès réseau pour récupérer les templates.
