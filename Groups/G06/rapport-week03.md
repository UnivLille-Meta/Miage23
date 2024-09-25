# Mohamed Yassine Aloui Section
En Pharo, tout élément est un objet, même les classes, qui reçoivent également des messages. Une classe est une instance d'une autre classe (objet) appelée metaclass. La recherche de méthode (method lookup) utilise le même algorithme de dispatch. Par exemple :

```inst:=super new.```

Ici, super n'est pas la super classe, mais le récepteur du message. On va donc chercher la super classe de l'instance. Un exemple :

``` ^super class == self class ```

Cela retourne true. Le même concept de dispatch, expliqué dans le rapport, est appliqué dans les méthodes de classe.
## Objects vs. Data

Les objets ne stockent pas seulement des données, mais ils ont des méthodes, un comportement spécifique à chaque objet. C'est pourquoi on encapsule la logique dans la classe pour que le client puisse la réutiliser, simplifiant ainsi le code client, favorisant la maintenance, et évitant la répétition de code. Le client va utiliser la méthode sans connaître l'implémentation et ses détails.

Les structures de données stockent uniquement des données et n'ont pas de comportement. 
 ## About global variables et Global to parameter

Les variables globales ont la même valeur pour toutes les classes, ce qui pose problème si on en change une dans un objet X, car tous les autres objets se mettraient à jour également. À la place, on utilise des paramètres pour faciliter la testabilité et favoriser la modularité du code.

Modularité : Diviser un système en plusieurs composants indépendants, chaque objet étant responsable de ses propres tâches. Dans ce cas, chaque application pourrait avoir ses propres ensembles d’icônes ou d’outils sans interférer avec les autres.

Messages spécialisés : Chaque objet peut répondre à des messages (méthodes) de manière différente selon son rôle ou son contexte. Il est important d’éviter les références globales (comme les icônes de Smalltalk) et de favoriser la modularité pour que chaque application puisse avoir ses propres icônes, outils ou environnements, tout en permettant à chaque objet de spécialiser les messages qu'il reçoit et traite.


# Karim EL JISR

## Points sur les cours :

### Objects vs. Data

Pour ce premier cours , j'ai retenu ces points:

1. Les objets encapsulent des comportements, contrairement aux structures de données qui se limitent à stocker des informations.
2. Une bonne API permet de réutiliser la logique des objets, tandis qu'une mauvaise API force les clients à dupliquer la logique.
3. Les objets doivent fournir des services complets, comme illustré par la classe Point en Pharo, qui offre des opérations complexes      directement dans l'objet, contrairement à Java où ces opérations sont externalisées.
4. Une API bien conçue réduit la duplication de code et améliore l'encapsulation.

### About global variables

1. Les variables globales et les Singletons sont problématiques car elles sont partagées globalement, ce qui complique les tests et réduit la modularité.
2. Les variables globales peuvent prendre différentes formes, parfois déguisées (comme dans l'exemple des icônes en Pharo).
3. L'usage de variables globales limite la flexibilité : il est difficile de tester ou de comparer des environnements distincts simultanément.
4. Il est essentiel de minimiser les références globales pour faciliter la gestion du changement et encourager la réutilisation des comportements dans des environnements spécifiques.

### Global to parameter

1. Les variables globales ne sont pas une fatalité : elles peuvent souvent être transformées en paramètres de calcul (comme des variables d'instance).
2. Utiliser des variables d'instance ou des paramètres rend le code plus modulaire et plus facilement testable, contrairement aux variables globales qui introduisent des dépendances cachées.
3. Il est essentiel d'éviter l'usage de globales et de Singletons, qui compliquent la modularité et réduisent la capacité à isoler et à tester le code de manière fiable.


### Rapport sur le projet de jeu d'échecs :
Pour le projet, j'ai commencé par analyser les classes déjà créées dans le jeu afin de comprendre les méthodes existantes. Certaines étaient simples à appréhender, mais j'ai rencontré des difficultés avec d'autres.

J'ai choisi de travailler sur la promotion des pions comme Kata. Cela implique de gérer les mouvements des pions et, plus spécifiquement, la situation où un pion atteint l'extrémité de l'échiquier, déclenchant sa promotion en une autre pièce (cavalier, fou, tour ou reine).

Il n'a pas encore été précisé si le jeu sera interactif ou s'il jouera automatiquement. Il existe donc deux solutions possibles :

1. Un bot choisit aléatoirement la pièce de promotion.
2. Un pop-up permet au joueur de choisir la pièce dans laquelle il souhaite promouvoir son pion. Lorsqu'il clique sur son choix, la promotion s'effectue en conséquence.

Pour une première approche, j'ai commencé par écrire des tests pour le pion. J'ai ainsi créé la classe MyPawnTests et effectué les tests suivants :

Test 1 : testId
Test 2 : testFirstMove
Test 3 : testMove
Test 4 : testMovesWithOpponentObstacle
Test 5 : testMovesWithSameColorObstacle

### Notes :
Je n'ai pas encore effectué les commits pour ma partie, car j'ai quelques questions à poser au professeur concernant les modifications que j'ai apportées avant de finaliser ces commits. 


# MOULOUEL Tarik 
## Objects vs Data :
 - les objets sont les éléments fondamentaux du système. Tout est un objet, et ces objets représentent des entités qui combinent à la fois un état (données) et un comportement (méthodes). Les objets sont des instances de classes, et ils encapsulent à la fois les données et les opérations qui peuvent être effectuées sur ces données. L’état d’un objet est privé et ne peut être accédé qu’à travers ses méthodes, en envoyant des messages à l’objet, un object a plusieurs carachteristiques comme l'encapsulation, comportement, identité et polymorphisme; Les données quant à elles se réfèrent à des valeurs brutes ou des informations. En POO, les données sont souvent considérées comme quelque chose à gérer ou à manipuler par les objets. Dans Pharo, les données peuvent être des valeurs primitives comme des nombres, des chaînes de caractères, ou des booléens, mais aussi des structures plus complexes comme des collections (par exemple, des tableaux ou des dictionnaires). Cependant, les données elles-mêmes n’ont pas de comportement propre. 

 ## About global variables :
 - Une variable globale en Pharo est une variable accessible depuis n'importe quelle partie du système, elle a une portee au niveau du système, ce qui signifie que toute classe, méthode ou tout objet dans Pharo peut y accéder et les modifier et Cela peut rendre le code plus difficile à maintenir, car il n'est pas toujours évident de savoir quelle partie du système est responsable d'un changement dans une variable globale. 

 ##  Global to parameter ;
 - Transformer une variable globale en un paramètre est une bonne pratique qui améliore l'encapsulation et la maintenabilité du code. En Pharo, cela signifie remplacer l'accès à une variable globale par l'utilisation d'un argument passé explicitement aux méthodes ou aux objets qui en ont besoin. Cette approche permet de réduire le couplage et d'améliorer la testabilité. 
  
## Project milestone 1 : 

- Pour cette semaine, j'ai aussi regardé le projet des echecs, je vais le kata Refactor piece rendering, j'ai identifié les classes principales du projet, j'ai vu les quelqeus tests ecrits, j'ai aussi refactorisé la méthode ```renderKnight``` pour qu'elle soit plus lisible en enlevant les imbiquations profondes.
- j'ai aussi fait la meme chose pour la methode ``` renderPawn``` en enlevant les imbriquations profondes car la logique etait similaire à la premiere.