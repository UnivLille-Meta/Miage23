# Gabriella

Cette semaine, j'ai appris lors des cours plusieurs notions qui vont m'aider au cours de l'impléméntation du jeu que nous avons à faire en groupe.

#### Ce que j'ai compris : 
 - Lors qu'on a un projet à implémenter, we have to "speculate about the design", c'est à dire penser d'abord à ce dont on va besoin pour implémenter ce projet, par exemple, si je veux implémenter un labyrinthe, aurais-je besoin de murs, cases, etc?
 Ce principe peut également etre utilser lorsqu'on reprend un projet déjà fait et qu'on réfléchit à l'avance à quelles classes on va trouver avant de regarder le code .

  - lors de la mise en œuvre du double dispatch: segmenter les conditions dans la logique de notre code et privilégier la création de classes modulaires
  - Envoyer un message c’est faire un choix. Une classe définie un choix possible et une hiérarchie de classes définit les choix possibles.
  - Il faut éviter de dupliquer du code. Dupliquer du code implique aussi une duplication de bugs :). 

* Solution possible : 
Faire de petites méthodes pour chaque aspect : au lieu d’avoir une grosse classe qui fait tout : privilégier plus de classes et des petites méthodes pour chaque aspect.
On aura ainsi une une complexité moins élevée aussi.

  - Ce que c'est "nil"  
- De ce que j’ai compris: 
En java, nil  c’est un  pointeur par défaut. Et c’est assez "surprenant " pour un langage objet.
En pharo,  c’est un objet, une instance unique de la classe UndefinedObject.
    

**Avancement personnel** : Je continue les exercices sur  DoubleLinkedList et le mutation testing


 
# Nouha

## Ce que j'ai fait:
### Ce que j'ai appris en cours cette semaine:
- On a vu de près l'importance de l'envoi des messages dans la coo, notamment, un envoi de message représente un choix et la hiérarchie de classes définit les choix possibles.
- On a vu comment l'envoi de message est un hook, ça donne la possibilité aux sous-classes de varier les méthodes. C'est valable aux self-send messages aussi.   
- Emmental poo: une classe générique peut avoir des trous et les sous-classes remplissent ces trous.
-  l'implémentation des petites méthodes au lieu des hardcore classes est très important que ce soit au niveau de l'encapsulation de la complexité, la facilité de test et la possibilité de créer des points d'extension pour les sous-classes. 
- Au lieu de renvoyer Nil en cas d'erreur, on peut générer une exception appropriée.
- Pour éviter les vérifications constantes de Nil, on peut de renvoyer des objets polymorphes plutôt que Nil. Par exemple, au lieu de renvoyer Nil, on renvoit une collection vide ou un nombre spécifique.
- En pharo, on a trois singleton, Nil, true et false. 
  
## Ce que je n'ai pas fait:  
J'avance toujours sur MyList, le homework de double linked list

## difficultés rencontrées:
pad de difficulté spécifique.



# Axel

Nous avons vu différents pattern, dont le pattern nil que nous avions présenté, l'ayant repéré dans AVL. Mais le voir plus en profondeur m'a permi de réellement comprendre la portée de ce pattern et l'utilité de celui-ci, ainsi que la bonne pratique sur laquelle il repose/qu'il aide à faire qui permet le découplage et donc le double dispatch, et ce qui en découle.

On nous a aussi présenter le 2nd projet, réaliser un jeu parmis une liste prédéfinie et incorporer dans son développement un maximum de pratique vu en cours. Nous pensons à "Game of Life", "SameGame" et "2048". Cepedant, à part le double dispatch et le visiteur, nous n'avons au premiers abords pas encore vu plus de pattern à intégrer, nous devons y réfléchir plus en détails.
