## Thomas LIENARD

Cette semaine nous avons découvert les mutations testing, ce qui m'a permis de decouvrir un nouveau moyen de tester et améliorer nos tests. En effet, le mutation score établi grâce au nombre de mutant tué par nos tests me semble plus prècis que le coverage car il montre qu'un certain nombre de test laissent passer des mutants et donc des erreurs potentiels.

Cependant, je pense que le coverage et les mutation testing sont utiles et même complémentaire, on peut utilisé le coverage pour savoir qu'elle code tester avec des mutants, puisque un code non couvert ne pourra pas tuer de mutant.

J'ai aussi commencé à regarder les tests de Chess, j'ai pu trouver que le projet n'avait que 45% de coverage et un mutation score de 24. 
Certaine classe tels que MyKing ont un mutation score de 0, malgré des tests présents ce qui signifie que tout ces tests doivent être modifié pour pouvoir tuer de potentiel mutant.

J'ai aussi créé mes premiers tests pour mon kata, Fix pawn moves, parmis eux deux ne fonctionnent pas puisse que je me suis rendu compte après qu'ils nécessitaient le fix d'un autre kata (Restrict legal moves) malgré cela j'ai un matation score de 51 sur la classe MyPawn, ce qui me semble être un bon début pour mes tests sachant qu'il ne couvre pas encore tout le code de la classe.

Lien du GIT : https://github.com/ThomasLienard/Chess/tree/Thomas

## Baptiste PARENT

Cette semaine j'ai créer mes premiers test pour le projet Chess. Comme mon kata touche principalement l'UI avec du refactoring (Make the game UI themable), j'ai décider de faire des tests de non régression fonctionnels pour vérifier que la logique du jeu fonctionne toujours une fois que j'aurai fais des changements. 
Pour le moment j'ai testé la bonne initialisation du jeu et vérifier qu'on change bien de joueur à chaque tour. J'ai aussi voulue tester que le échec et mat est bien détecter mais le test ne passe pas encore j'ai d'abord cru que should:raise: ne pouvait pas détecter un Halt (la fonction checkForMate en utilise) mais en vérifiant on voit que la classe Halt hérite de la classe Exception, l'erreur doit donc venir d'autre part.

Je n'ai pas encore push de code pour mon kata car il demande d'abord une bonne compréhension du projet en général, j'avais aussi un blocage au niveau de l'importation d'images ainsi que leurs affichages car il y a plusieurs manière de charger une image depuis le code et je devais trouver la manière qui était compatible avec l'affichage actuel du jeu.

La solution que j'ai trouvé est de la forme suivante:

```
image := Form fromFileNamed: 'imagePath'.
aSquare background: image.
```
Ce qui permet de mettre l'image d'une pièce dans une case. 

Il me faut maintenant commencer à mettre en place le nouveau système d'affichage.








