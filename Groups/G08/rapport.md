## DASSI-Helyana

# FIRST WEEK :

## HOMEWORK : 

### Pharo and their iterators

#### 1) What is a collection and what is it used for? What kind of collections does Pharo standard library provide? How do you iterate collections and what are the differences between them?

Il existe **deux types de collections** : les collections **littérales** et les collections **dynamiques**.

- Une **collection** est un ensemble d'éléments (qui peuvent être de n'importe quel type d'objet). 
- Les **index des collections** commencent à 1.

Il y a plusieurs types de collections :

- **OrderedCollection** : ( dynamique et grossit quand on add des élements)
- **Array** : (taille fixe, on accède aux élements à l'aide de leur indice)
- **Set** : (sans doublons)
- **Dictionary** : (clé-valeur)

Les collections en Pharo partagent une API commune Ils ont une api commune facilitant le vie du programmeur repartir en 7 points :

1. **Création des collections** 
2. **Accès aux propriétés** (ex : taille)
3. **Tester** (ex : savoir si la collection est vide ou non)
4. **Ajout d'éléments**
5. **Retrait d'éléments**
6. **Énumération** (ex : je veux savoir si un élement est présent)
7. **Conversion** (d'un type à un autre)

On peut créer une collection ex que j'ai testé avec une tableau de taille 2: 
dans le playground j'ai ecris : 

myTab := Array new: 2.
myTab at: 1 put: 'a'.
myTab at: 2 put: 'b'.

ensuite jai affiché mon tab :
Transcript show: myTab; cr.

Ce qui me crée un tableau de taille 2 avec les valeurs null et je l'affecte dans myTab.

info trouvé dans cette vidéo :
https://www.youtube.com/watch?v=RCEizZ5h6Dg

#### Itération de collection : 
La méthode 
- do: prend un argument qui applique a chaque élément de la collection.
- collect: transformer chaque élément 
- select: permet de filtrer les éléments
- reject: permet d'exclure certains éléments
- detect: trouver le premier élément qui correspond à une condition

**Source :** 
https://eng.libretexts.org/Bookshelves/Computer_Science/Programming_Languages/Book%3A_Pharo_by_Example_5.0_(Ducasse_Zagidulin_Hess_and_Chloupis)/11%3A_Collections/11.05%3A_Collection_Iterators


### Conditionals in Pharo
2) How do you write conditionals in Pharo? What is different from other programming languages? Can you think about the benefits and drawbacks of the approach? How did you find this information?


"A la place de la structure de contrôle conditionnelle si-alors-sinon (if(condition)), Smalltalk envoie des messages comme ifTrue: à des objets de la classe Boolean." 
 
on envoie directement des messages à des objets pour qu'ils exécutent du code en fonction de la condition

Donc se n'est pas fixe, il n'y a pas une contition précise comme dans les autres langages donc flexible car tout objet rep a ces messages.


J'ai essayé de tester avec le playground mais j'avais oublié un '.' ça ne fonctionnait pas. 
|n|
n := 4. 
n < 1 
	ifTrue: [ 'le nb est plus petit que 1' ] 
	ifFalse: [ 'le nb est plus grand que 1' ]

    "Les nouvelles (sous-)classes sont créées en envoyant un message à leur superclasse."  source au lien en dessous  
https://programmation.developpez.com/tutoriel/cours-complet-pharo/?page=chapitre-3-moins-un-resume-de-la-syntaxe#L3-6



### Classes and methods

How do you write a small program with classes and methods in Pharo? Pharo is indeed, very IDE oriented and you have to get used to the tooling. How did you find this information?

What program did you write? What problems did you find? Please provide a github repository link.

Pour commencer je me suis inspirer de ce qu'on avait fais en classe avec la class Counter, j'ai ajouté un getter, setter à ma classe LesAnimaux et ensuite créer une methode de test. 
J'ai essaye de créer une méthode pour vérifier si l'animal passé en parametre est un chat mais je rencontre un probleme car il est ecrit message envoyé mais pas implémenter?
isCat: a
    a equals: 'Cat'
        ifTrue: [ 'Cest un chat' ]
        ifFalse: [ 'Ce n'est pas un chat' ]
https://github.com/helyanay/HomeworkC3P/tree/master/src






### Learn about the basic Pharo coding style.
Pharo methods are usually small and readable. What rules are common to follow? Are there tools that show you violations to such rules?

- les méthodes doivent avoir une responsabilité unique
- les classes commencent par une majuscule
- les méthodes par une minuscule

Il faut que le code soit lisible.



### Cascades

 L'envoie de messages en cascade permet d'envoyer plusieurs messages à un même objet, séparés par des ;
 

https://programmation.developpez.com/tutoriel/cours-complet-pharo/?page=chapitre-3-moins-un-resume-de-la-syntaxe



### Problème rencontré + Aide

J'ai rencontré un problème lors d'un push sur Git, où un souci d'identification persistait malgré l'entrée correcte de mes identifiants. Après avoir cherché sur Internet, j'ai découvert qu'il fallait créer un token pour résoudre le problème. 
Mes camarades ont également eu le même souci, et nous avons pu en discuter et le régler ensemble.

J'ai aussi rencontré un autre problème avec l'utilisation du logiciel **Pharo**, mais une de mes camarades m'a aidé à le résoudre via un appel sur **Discord**.

J'ai également envoyé un mail au professeur pour résoudre un autre problème sur le tp my counter.
























 