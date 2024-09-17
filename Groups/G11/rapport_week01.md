## Thomas LIENARD

### Learn about collections in Pharo and their iterators

Les collections sont des structures qui permettent de contenir n’importe quel type d’objet. La bibliothèque standard de Pharo fournit beaucoup de classes de collection telles que les Set, Array ou Dictionary qui héritent toutes de la classe Collection, ce qui permet d’avoir une API commune. Pour itérer dans une collection, on peut utiliser le message ```do: aBlock```. Toutes les collections commencent à l’indice 1.

Pour répondre à ces questions sur les collections, j’ai regardé la vidéo ‘Un survol des principales collections’.

### Learn about conditionals in Pharo

Pour écrire une condition en Pharo, on doit d’abord écrire une expression qui retourne un booléen, suivie de ```ifTrue:[]``` et  ```ifFalse:[]```. Le ‘[]’ contient le bloc à utiliser en fonction du résultat. Contrairement à d’autres langages, Pharo vérifie juste qu’un booléen soit vrai ou faux, ce qui me semble plus efficace et plus rapide.

Pour répondre à ces questions sur les conditions, j’ai regardé la vidéo ‘Booléens et conditions’.

### Learn how to create classes and methods

Pour cette partie, j'ai créé la classe Counter et ses quelques méthodes proposé comme tutoriel lors de cette première semaine. 
Voici le dépot de cette classe : https://github.com/Murddy/Counter/tree/main .

Durant cette parti j'ai eu quelque problème pour trouver comment lié ma classe écrite sur mon pc et le git que j'avais créé pour elle. J'ai donc demandé à un camarade de m'expliquer comment faire.

### Learn about the basic Pharo coding style.

Pharo possède plusieurs règle à suivre tels que mettre une majuscule pour commencer le nom d'une classe et mettre une minuscule pour une méthodes. Il y a aussi toute la synthaxe à connaitre comme savoir que || servent à definir une variable ou ^ qui est le return.

Pharo nous montre automatiquement les parties du code qui enfreignent une règle et nous montre la règle enfreinte.

Pour donner un exemple simple : 
```
Nomdemethod
  "commentaire"
  instruction
```
Dans cette exemple le nom de la méthode n'est pas valide.

### Extras

## Baptiste PARENT

### Learn about collections in Pharo and their iterators
Une collection est une structure de données qui peut contenir des éléments, elles sont utilisées pour stocker des informations et pouvoir appliquer des opérations sur un groupe d'éléments plus efficacement.

On peut retrouver les collections suivantes :
- OrderedCollection qui a une taille dynamique 
- Array qui a une taille fixe
- Set qui ne contient aucun doublon
- Dictionary qui est du type associatif (clé - valeur)

Différent itérateur :
- Do: applique le code d'un block à chaque élément.

    ``` #(1 2 3) do: [:each | Transcript show: each; cr]. ```
- collect: fait la même chose que do en retournant en plus une nouvelle collection avec le résultat.

    ``` #(1 2 3) collect: [:each | each * 2]. ```
- select: retourne une nouvelle collection avec uniquement les éléments qui correspondent à la condition du block

    ``` #(1 2 3 4) select: [:each | each even]. ```

J'ai trouvé ces informations sur le MOOC programmation object immersive en pharo.
### Learn about conditionals in Pharo

On a comme conditionnel en pharo:

ifTrue:, ifFalse:, ifTrue:ifFalse:, isEmpty:, isNotEmpty:

Les conditionnels sont des messages envoyés à des objects booléens, true et false sont des instances unique des classes True et False.

### Learn how to create classes and methods

Il faut d'abord créer un package à l'intérieur duquel on peut créer des classes. On peut alors dans chaque classe créer les méthodes voulues.

Je me suis entraîné avec le projet proposé en cours pour créer un compteur, vous pouvez retrouver le code sur l'adresse suivante : https://github.com/BlueBat15/Mycounter

### Learn about the basic Pharo coding style.

Parmis les bonnes pratique de programmation en général on retrouve le nommage explicite des variables et méthodes, suivre le principe de responsabilité unique pour garder des méthodes courtes et un code organisé (et tous les principes SOLID au final).
Il faut aussi bien sûr commenter son code, passer à la ligne et utiliser l'indentation pour la clarté du code.

Je ne sais pas à propos d'outils supplémentaire mais en codant dans l'IDE pharo j'ai pu voir qu'il y avait des warning sur les bonnes pratique à suivre notamment commencer un nom de méthode de test par "test" et finir un nom de classe de test par "tests". 

### Extras

Les cascades permettent d'envoyer plusieurs message à un même objet sans avoir à le répéter. J'ai pu l'utiliser dans les tests du projet Mycounter.

``` c count:2; decrement; decrement. ```

Qui est équivalent à :
``` 
    c count:2.
    c decrement.
    c decrement 
```

Les blocks contiennent du code qui ne s'exécute pas immédiatement et peut être passé en paramètre pour le stocker. On peut l'évaluer en utilisant le message value:

``` [:x | x + 2] value: 5 "retourne 7```