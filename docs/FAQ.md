## FAQ

### Comment est structurer le projet ?

Voici une explication des dossiers se trouvant à la racine du projet.

#### docs

* éléments graphiques ayant servi à l'intégration
* la modélisation de la base de données
* de la documentation pour les programmeurs qui travailleront sur le projet

#### html-integration

L'intégration HTML/CSS/JS original.

#### vagrant

Le dossier d'un outil qui nous permet de faire rouler l'application dans une machine virtuel et ainsi standardiser l'environnement de développement.

#### src

L'application PHP elle-même.

##### app

Contient tous les éléments d'une application MVC traditionnel

##### bootstrap

Des fichiers de chargement automatisé pour l'application.

##### public

La facade de l'application. Le serveur Apache doit pointer ici. On y retrouve les assets de l'intégration HTML et le fichier PHP racine qui lie toutes les composantes de Laravel.

##### vendor

Les dépendances de Laravel. Le contenu de ce dossier a été créé par *Composer*

### Quel est le framework utilisé ?

Le framework utilisé est [Laravel](http://laravel.com/).

Ces dépendances de base sont installés automatiquement via l'utilisation de *Vagrant*.

### Comment faire une mise à jour de la base de donnée de manière programmé ?

Laravel utilise un [système de migration](http://laravel.com/docs/migrations) pour automatiser cela.

Vous devez par contre lui indiquer ces changements.

Vous pouvez voir des exemples de migration dans le dossier */src/app/database/migrations*.

Ne vous inquiétiez pas pour les nos de fichiers; ils sont auto-généré par *artisan*.

### Qu'est-ce qu'*artisan* ?

C'est une [interface de ligne de commande](http://laravel.com/docs/artisan) inclus à même *Laravel*.

Vous pouvez voir toutes les commandes disponibles avec la procédure suivante:

    $ cd src
    $ php artisan list

Vous verrez alors défiler une grande quantité de commandes très pratiques.

Vous pouvez par exemple auto-générer:

* vos controlleurs
* vos views
* vos models
* les fichiers de migration