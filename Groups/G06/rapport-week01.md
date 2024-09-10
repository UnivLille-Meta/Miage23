Mohamed Yassine Aloui Section


Après avoir lu des documents PDF et regardé des vidéos, j'ai appris la syntaxe de Pharo (les classes, les objets, les messages). En Pharo, tout est un objet, ou bien un message envoyé à un objet. Pour exécuter une méthode, on envoie un message à cet objet.

Les types de messages sont :

Les messages unaires (par exemple : objet message).
Les messages binaires (par exemple : objet + autreObjet).
Les messages à mot-clé (par exemple : objet message: paramètre).
Collections en Pharo
Une collection est un ensemble d'objets. C'est comme une liste qui stocke des objets et offre différents messages (équivalents des méthodes en Java) pour ajouter, supprimer et accéder aux éléments de la collection. 
En Pharo, on peut utiliser les conditions avec ifTrue: et ifFalse: en combinant des blocs de code []. Cela signifie que l'on teste une valeur dans une ligne précédente, puis on applique la condition. Contrairement à d'autres langages de programmation, on ne peut pas placer une condition directement devant if, comme dans les syntaxes plus traditionnelles. 

Exemples de Code Violant les Règles

 'une des bonnes pratiques en Pharo est d'éviter les méthodes longues et celles qui visent à produire plusieurs résultats différents. Il est également recommandé d'éviter d'écrire tout le code sur une seule ligne, afin de garder une lisibilité et une maintenabilité plus faciles
  
Après on a suivi les exercises de pdf
1.	Création de classe et méthode et d'une classe de test pour tester l'implémentation d'un code qui sert à incrémenter et décrémenter un compteur.
2.	Création de la classe Counter.
3.	Ajout des méthodes get & set avec la syntaxe de Pharo (count, count:).
4.	Implémentation de la classe de test.
5.	Implémentation d'une méthode pour tester la fonction increment.
6.	Implémentation des fonctions increment et decrement.
7.	Définition d'une méthode de test dans la classe de test pour tester la fonction decrement.
8.	Enregistrement du travail dans Iceberg avant de le push vers GitHub.
 
 

Les cascade

Elles permettent d'envoyer plusieurs messages à un même objet sans avoir à le répéter ce qui rend le code plus compact et souvent plus lisible..

XTDD
1)création de class de test 
le principe de XTTD est de fixer et corriger les erreurs de déclaration dans le test (classe ou méthode de classe ou attribut) en utilisant le débogueur. Et du coup on est sur que la nouvelle classe créer et ses méthodes et attributs et l’implémentation de code est correcte , ce qu’on appelle Le développement piloté par les tests et en utilisant le débogueur.

 
 
En suivant la vidéo j’ai
  
  
  # MOULOUEL TARIK WEEK 1 : 
  # Rapport Week 1 

## Collectiosn and iterators in Pharo : 
- Pour se faire, j'ai regardé une vidéo Youtube qui expliquait les collections, donc comme pour les autres langages de progrmmation, une collection sert a stocker et a manipuler  des elements  j'ai pu constater qu'il y avait plusieurs types de collections en Pharo parmi elles :les tableaux, les sets ou encore les dictionnaires, cependant dans Pharo le premier element est d'index 1 et non pas 0 comme la plupart des autres langages de programmation. UNe collection peut contenir differents types d'objets

- Pour parcourir les collections il existe plusieurs itérateurs do,collect,select,reject, detect ... . j'ai essayé avec un petit exemple sur le playground pour savoir que ça marchait bien :    ``` #(16 11 68 19) do: [ :each | Transcript show: each ; cr ] ```  

- Les differences entre les differentes collections sont : 
  - OrderedCollection :  collection dynamique donc on peut inserer sans se soucier de la taille.
  - Array: collection statique donc de taille fixe.
  - Set: une collection qui stocke des éléments uniques,sans doublons, et où l'ordre n'est pas garanti.
  - Dictionnaire: une paire de cle valeur ou la cle est unique. 


## Conditionals in Pharo : 
  - Apres avoir LU le le pdf ```http://rmod-pharo-mooc.lille.inria.fr/OOPMooc/01-Welcome/W1S07-BasicBooleansAndCondition.pdf```, j'ai pu comprendre que les booleens sont un peu differents des autres langages de programmation car ils sont implementes comme des envois de messages à des objets.   
    j'ai essayé quelques exmemples dans le playground ``` (5 = 5) ifTrue: [ Transcript show: 'Égal'; cr ] ifFalse: [ Transcript show: 'Pas égal'; cr ].``` ce qui affiche Egal. 



## Learn how to create classes and methods : 
    - POur ce faire, j'ai cree la classe Mycounter, que j'ai ensuite tésté en suivant une autre vidéo Youtube qui expliquait les differentes étapes pour réaliser cette petite manipulation.
    - les difficultés rencontrées c'est notamment s'habituer à l'environnement de Pharo c'est a dire utiliser les outils du Browser et pas juste creer des classes comme on avait l'habitude avec les autres langages.   


 ## Learn about the basic Pharo coding style :  
 - Les regles a suivre sont :  
   - Choisir des noms simples, variable privee en miniscule, variable partagee en majuscule, eviter les underscore dans les identifiants de variable...
   - utiliser les commentaires surtout les bouts de codes inhabituels...
   - toujours bien aligner son code..
   - eviter les parenthses de trop, utiliser les patterns et biens d'autres. 

## Extras : 
- Apres avoir lu pdf,Les blocks sont des méthodes anonymes qui sont utilsees partout en Pharo , boucles iterateurs, conditions ..., c'est comme les lambdas fonctions qu'on avait vu en Haskell l'annee derniere. j'ai egalemnt fait quelques tests dans le playground.  


  

