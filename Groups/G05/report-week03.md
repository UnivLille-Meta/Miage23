# WEEK 3 :

## KHADIJA BESBAS 

****
# Cyril Godet


## Exercice sur LRUCache


### Qu'est ce que le LRUCache ?

Selon Wikipedia, le cache est : "une mémoire qui enregistre temporairement des copies de données provenant d'une source, afin de diminuer le temps d'un accès ultérieur (en lecture) d'un matériel informatique (en général, un processeur) à ces données"


l'algorithme de mise en cache LRU (Least Recently Used) est un algorithme qui consiste lorsque le cache est plein à enlever les données qui n'ont pas été utilisées récemment par de nouvelles données

Sources :
```   
https://fr.wikipedia.org/wiki/Algorithme_de_mise_en_cache

https://fr.wikipedia.org/wiki/M%C3%A9moire_cache
```

Il existe aussi d'autres statégies que le LRU comme  :

* FIFO (First In First Out)
* LFU (Least Frequently Used)
* Algorithme aléatoire


La différence entre LRU et LFU est que LFU : " garde trace de la fréquence d'accès de ces lignes et remplace la moins fréquemment utilisée"


### Observation de la classe LRUCache dans Pharo

La classe LRUCache est dans le paquet System-Caching qui doit surement s'occuper de la gestion du cache.   
Le paquet est composé d'une classe abstraite AbstractCache qui permet de créer le cache avec un couple clé/valeur et possède une interface at:ifAbsentPut qui prend 2 paramètres et qui permet de trouver la valuer associé à la clé si elle existe ou de la créer sinon.  
Le paquet possède aussi des informations sur le poids (la capacité du cache) et des statistiques.  
Enfin, le paquet possède la classe LRUCache qui doit implémenter l'algorithme LRU.  

Pour comprendre comment fonctionne l'implémentation de l'algorithme LRU, j'ai décidé de me concentrer sur la classe LRUCache et d'ignorer les autres classes pour le moment.


**TODO**

- LRUCache
- CacheStatistics
- CacheWeight
- AbstractCache
- TTLCache

Voici un exemple d'utilisation de LRUCache qui est dans les commentaires de la classe :
```
primeFactorsCache := LRUCache new.
50 timesRepeat: [
  | n |
  n := 100 atRandom.
  primeFactorsCache at: n ifAbsentPut: [ n primeFactors ] ].
```
Ce code permet selon moi sans avoir vu les détails du code de répéter 50 fois :

1. Choisir un nombre aléatoire entre 0 et 100 (n).
2. Regarder dans le cache s'il existe.
3. - Si le nombre n'est pas stocké dans le cache, on calcule ces facteurs premiers et on ajoute le résultat dans le CacheWeight
  - Sinon on les récupère du cache.

### Observations des usages de la classe LRUCache
J'ai décidé de regarder combien de fois est appelé ```at:ifAbsentPut:``` en regardant les senders et il y en a 409 ce qui est énorme et il y aussi des faux positifs qui sont utilisés dans d'autres paquet que System-Caching.

Si on se concentre que sur LRUCache, il n'y en a plus qu'un qui est dans la méthode at de AbstractCache.
Si on regarde les tests qui lui sont associé, il y en a 5 dans LRUCacheTest qui utilise cette dépendance :
- testAt
- testFactory
- testFibonacci
- testPopulate
- testPrimeFactors


### Implémentation dans le cache

Si on lit le code de ``` at:ifAbsentPut: ```:
- on récupère la valeur de la clé et on regarde si une valeur lui est associé dans le cache.
- si la clé n'existe pas dans le cache :
  - on calcule la valeur
  - on crée l'association clé/valeur
  - on insère l'association dans le cache.
- sinon, on récupère la valeur dans le cache.

On peut supposer que lorsque le cache est plein, l'algorithme LRU doit s'exécuter soit au moment où on crée l'association soit lorsqu'on l'ajoute dans le cache.



## Homework


Cette semaine:

* J'ai essayé d'appliquer le cours de jeudi dans le projet pour essayer de comprendre et de me concenter que sur ce qui est important à faire maintenant.   
Je n'ai pas encore trouvé les problèmes liés à mes tests mais je pense être sur la bonne voie puisque je viens de voir que je vais devoir mettre en place le système pour savoir si une case est dangereuse pour le roi et ainsi savoir s'il est en échec.
* Je pense aussi avoir conpris pourquoi je n'arrivais à rien, c'est parce que je n'avais pas compris comment fonctionne la logique booléenne en Pharo mais je pense maintenant avoir compris.
* J'ai lu les policopiés du cours sur les tests et en particulier celui sur le Mutation Analysis.
* J'ai relu les policopiés du MOOC sur l'héritage et j'ai essayé de l'appliquer dans le Pharo Launcher pour m'entraîner sur le code en Pharo.
* J'ai refais les exercices du MOOC pour retravailler la syntaxe de Pharo.

****

# BOU ALEXANDRE

Cette semaine : 

- J'ai aidé Kadija sur son kata (sur le premier mouvement du pion qui peut avancer de deux cases).
- J'ai analisé le code de chess pour voir le mouvement du pion et comment sont géré les pièces dans game pour pouvoir le modifier avec la promotion.
- J'ai lu les poly de cours de cette semaine.
- J'ai relu les poly de la semaine précédente et refait l'exercice sur LRUCache vu en cours.
