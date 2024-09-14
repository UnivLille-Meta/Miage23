#Mohamed Yassine Aloui Section


Après avoir lu des documents PDF et regardé des vidéos, j'ai appris la syntaxe de Pharo (les classes, les objets, les messages). En Pharo, tout est un objet, ou bien un message envoyé à un objet. Pour exécuter une méthode, on envoie un message à cet objet.

##Les types de messages sont :

Les messages unaires (par exemple : objet message).
Les messages binaires (par exemple : objet + autreObjet).
Les messages à mot-clé (par exemple : objet message: paramètre).
Collections en Pharo
Une collection est un ensemble d'objets. C'est comme une liste qui stocke des objets et offre différents messages (équivalents des méthodes en Java) pour ajouter, supprimer et accéder aux éléments de la collection. 
En Pharo, on peut utiliser les conditions avec ifTrue: et ifFalse: en combinant des blocs de code []. Cela signifie que l'on teste une valeur dans une ligne précédente, puis on applique la condition. Contrairement à d'autres langages de programmation, on ne peut pas placer une condition directement devant if, comme dans les syntaxes plus traditionnelles. 

##Exemples de Code Violant les Règles

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
 
 

##Les cascade

Elles permettent d'envoyer plusieurs messages à un même objet sans avoir à le répéter ce qui rend le code plus compact et souvent plus lisible..

##XTDD
1)création de class de test 
le principe de XTTD est de fixer et corriger les erreurs de déclaration dans le test (classe ou méthode de classe ou attribut) en utilisant le débogueur. Et du coup on est sur que la nouvelle classe créer et ses méthodes et attributs et l’implémentation de code est correcte , ce qu’on appelle Le développement piloté par les tests et en utilisant le débogueur.

  
  
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
  - j'ai essayé quelques exmemples dans le playground ``` (5 = 5) ifTrue: [ Transcript show: 'Égal'; cr ] ifFalse: [ Transcript show: 'Pas égal'; cr ].``` ce qui affiche Egal. 



## Learn how to create classes and methods : 
  - POur ce faire, j'ai cree la classe Mycounter, que j'ai ensuite tésté en suivant une autre vidéo Youtube qui expliquait les differentes étapes pour réaliser cette petite manipulation.
  - les difficultés rencontrées c'est notamment s'habituer à l'environnement de Pharo c'est a dire utiliser les outils du Browser et pas juste creer des classes comme on avait l'habitude avec les autres langages.   
  - Pour mon lien github : ```https://github.com/tarik-Moulouel/Miage-C3P-Tarik``` 


 ## Learn about the basic Pharo coding style :  
 - Les regles a suivre sont :  
   - Choisir des noms simples, variable privee en miniscule, variable partagee en majuscule, eviter les underscore dans les identifiants de variable...
   - utiliser les commentaires surtout les bouts de codes inhabituels...
   - toujours bien aligner son code..
   - eviter les parenthses de trop, utiliser les patterns et biens d'autres. 

## Extras : 
- Apres avoir lu pdf,Les blocks sont des méthodes anonymes qui sont utilsees partout en Pharo , boucles iterateurs, conditions ..., c'est comme les lambdas fonctions qu'on avait vu en Haskell l'annee derniere. j'ai egalemnt fait quelques tests dans le playground.  


# EL JISR Karim 
# Rapport Week 1 :

## Learn about collections in Pharo and their iterators

Une collection dans Pharo est une structure de données qui regroupe des éléments pour les stocker et les manipuler en tant qu'ensemble. Les collections sont fondamentales dans Pharo, permettant de gérer plusieurs objets ensemble, tels que l'ajout, la suppression, l'accès ou l'itération des éléments.

Types de Collections dans Pharo : 
Toutes ces collections héritent de la classe de base Collection.
Parmi les collections les plus couramment utilisées dans Pharo, on trouve :
- Array : Une collection ordonnée et de taille fixe, dont les éléments peuvent être accédés par index.
- OrderedCollection : Une collection dynamique et ordonnée qui peut grandir et se réduire selon les besoins.
- Set , LinkedList ect..

Les itérateurs les plus courants: do , collect , select: / reject:

Comment J'ai Trouvé ces Informations:
Pour rassembler ces informations, j'ai exploré la documentation de Pharo, examiné les classes et méthodes dans l'environnement de Pharo

## Learn about conditionals in Pharo

Les Conditionnels dans Pharo

En Pharo, les conditionnels sont gérés différemment par rapport à d'autres langages de programmation. Les conditions ne sont pas des structures de contrôle intégrées au compilateur, mais des messages envoyés aux objets.

on peut les ecrire avec les messages suivants:
ifTrue:, ifFalse:, ifTrue:ifFalse:, et ifFalse:ifTrue:

| collection |
  collection := OrderedCollection new.
  collection isEmpty
    ifTrue: [ Transcript show: 'La collection est vide'; cr ]
    ifFalse: [ Transcript show: 'La collection contient des éléments'; cr ].

Différences par rapport aux autres langages: 

Contrairement à des langages comme Java ou Python, où les conditionnels sont intégrés directement dans la syntaxe du langage (if, else), en Pharo, les conditionnels sont des messages envoyés aux objets, tels que Boolean.

Avantage :
Écrire les conditions avant d'appeler les actions ifTrue: ou ifFalse: rend le code plus lisible
Inconvénient
Pour les programmeurs d'autre languages c'est ambigue de ne pas trouver une sytaxe if else.

Pour rassembler ces informations, j'ai consulté le MOOC "Live Object Programming in Pharo" et j'ai examiné l'implémentation des classes Boolean, True, et False dans l'environnement de Pharo.

## Learn how to create classes and methods

Pour créer une classe :
* il faut créer un Package :
Ouvrez le System Browser (par Browse => System Browser).
Cliquez sur "New Package" et nommez votre package.
* ensuite il faut ajouter une Classe :
Une fois le package créé, ajoutez une nouvelle classe en cliquant sur "New Class".
il faut donnez un nom à la classe et définissez ses super-classes et variables d'instance.
* enfin il faut ajouter des Méthodes :
Après avoir créé la classe, il faut ajoutez des méthodes en sélectionnant la classe dans le System Browser et en utilisant "New Method".

Exemple qu'on a fait est celui fait en classe pour Counter et les tests.

Probleme rencontrer c'est qu'il faut faire une methode initialize pour chaque classe cree car sans cette methode on aura des erreurs de tests.

J'ai appris à créer des classes en suivant le cours de méta en L3, et j'ai également bénéficié d'un rappel lors de la première séance de cours.


## Learn about the basic Pharo coding style.

Règles Communes du Style de Codage en Pharo
Choisir des Bons Noms :
Les noms doivent être simples, directs et explicites.

Nomination des Méthodes et Variables :

Les noms des classes commencent par une majuscule (par exemple, Counter, Dé).
Les noms des méthodes commencent par une minuscule (par exemple, initialize, add).
Les noms des getters et setters suivent directement le nom de l'attribut qu'ils manipulent, sans préfixe get ou set comme dans d'autres langages. Par exemple, pour une variable add, le getter est add et le setter est add:.

Accesseurs et Paramètres :
Les accesseurs doivent suivre les noms des variables d'instance correspondantes. Par exemple, pour une variable d'instance name, le getter serait name et le setter name:.

Nommage des Tests :
Les noms des tests commencent par test pour indiquer clairement qu'il s'agit de méthodes de test.

Syntaxe et Séparation des Instructions :
Pour séparer les instructions dans une méthode, on utilise le caractère (.).

Violation : Nom de Paramètre Identique à une Variable d'Instance

age: age
    age := age.  "Erreur : le paramètre et la variable d'instance ont le même nom."

Correction :

age: newAge
    age := newAge.


J'ai exploré ces informations en consultant le livre "Pharo with Style" et en utilisant les outils intégrés dans l'environnement de développement Pharo, tels que le Critic Browser.

