# WEEK 4 :

# KHADIJA BESBAS 
### Homework

- Sur ma branche ( kata_1 ), j'ai un taux de coverage de 51,90%. Plusieurs fonctions n'ont pas étaient testés ( qui ne concerne pas mon kata ). Par contre, j'ai pu constaté que certaine fonction que je pensais avoir bien testé, ne le sont que partiellements.
- L'outils va me permettre de vérifier que le code tester, l'est bien.


Je ne me suis concentré que sur la classe MyPawn :
````

testCases :=  { MyPawnTests }.
classesToMutate := { MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.

analysis generalResult mutationScore.

"To retrieve the alive mutations"
alive := analysis generalResult aliveMutants.

analysis generalResult.

````
J'ai comme résultats : 64 mutants qui ont survécuent contre 204 de tués ( soit 23% de survivant ). Cela montre aussi que mes tests ne sont pas encore assez complet car il ne traite pas tout les cas possibles.

- Ce que j'ai compris des mutations, c'est qu'en mutant son code, on peut vérifier que nos tests sont pertinents. Ainsi, c'est une façon de tester nos tests.

Cette semaine j'ai donc : 
- lu le cours
- fait les exercices sur les mutations
- avancé sur mon kata ( prise en passant )

Concernant les questions que j'ai : 
- Pendant que je travaillé sur mon kata, j'ai eu pharo qui est a "friz" ( impossible de faire quoi que ce soit, même de fermé l'application ). Comme je n'avais pas sauvegardé, j'ai perdu une partie de mon travail...
Y a t-il quelques chose que l'on puisse faire lorsqu'on est confronté à ce problème ? Est-il possible d'avoir une sauvegarde automatique sur pharo ? 





****
# Cyril Godet

### Homework

Cette semaine, j'ai :

* Fais l'exercice sur le mutation testing en cours pour appliquer le concept.
* Essayé de faire l'exercice sur le mutation testing sur le projet des AVL et sur le projet de Chess.
* travaillé sur les cours de la semaine prochaine sur les design pattern. J'ai revu les principaux desingn pattern comme la factory methode, le visiteur et le décorateur.

	- Pour la mutation du projet sur les AVL, en mutant les classes du package AVLTree.
 J'obtiens un score de mutation de 84 % et 13 mutations qui sont encore en vie
avec cette commande passsée dans le PlayGroud :
```
testCases :=  { AVLTreeTest }.
classesToMutate := { AVLTree }.
analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
analysis run.
analysis generalResult mutationScore
alive := analysis generalResult aliveMutants.
```

Je remarque que pour la plupart des mutants, c'est à cause de la valeur de retour où on a enlevé le return.

Cet exercice m'a aussi permis de retravailler le cours sur le reverse engineering et de me rappeller comment fonctionne un arbre AVL et comment le rééquilibrer.

- Pour le projet sur les échecs en ajoutant des mutants à la classe MyKingTest, j'obtiens un score de 19 %. Ce qui est faible. J'obtiens par ailleurs 133 mutants toujours en vie.
	En regardant quel mutants sont toujours en vie, je remarque que certains sont dus à de la logique puisque les mutants reste avec des varaibles qui sont toujours à true ou à false ou si on retire le not.
	
```
	testCases :=  { MyKingTest }. 
	classesToMutate := { MyKing }.
	analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
		analysis run.
		analysis generalResult mutationScore
		 
```

J'ai aussi travaillé sur le projet en détail en comprenant pourquoi je n'arrivait pas à faire que le roi ne soit plus en échec.  
J'ai remarqué que les pièces qui menaçait le roi n'était jamais mises à jour. J'ai donc crée ue méthode pour que les pièces qui menacent le roi soit mise à jour lorsque le roi ou une pièce se déplace.  
 Dans le test qui échouait tout le temps, j'appelle cette méthode à chaque déplacement de pièce et je peux maintenant savoir si le roi est en échec ou pas par une pièce. 


****

# BOU ALEXANDRE

Cette semaine : 


- J'ai travaillé avec Khadija sur son kata pour voir comment faire la prise en passant.
- J'ai fait l'exercice sur la mutation.
- J'ai lu les pdf de cours pour cette semaine.
- J'ai étudié le code du jeu d'échec pour pouvoir faire la promotion. 
