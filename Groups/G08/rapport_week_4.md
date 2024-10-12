# WEEK 4 :
## HOMEWORK : 

## EL MANSOURI Yacine

## MUTATION TESTING
 
### Ce que j'ai appris à propos des tests de mutation

#### 1. **Tests de mutation, c'est quoi ?**
C'est une technique utilisée pour évaluer la qualité des tests d'un projet logiciel. L'idée est de **simuler des erreurs** dans le code (en modifiant de petits détails comme un opérateur ou une condition) et de voir si les tests les détecte. Un bon test est celui qui peut **"tuer" le mutant**, c'est-à-dire qu'il est passé rouge et donc qu'il a identifié l'erreur artificielle. Si un des tests survie, cela signifie que le code peut contenir des failles non couvertes par les tests actuels, ou que la mutation est **équivalente** (c'est-à-dire que le changement ne modifie pas réellement le comportement du programme).

#### 2. **Processus de test de mutation**
Le processus de tests de mutation se déroule en trois étapes :
1. **Introduction de mutations** : Des changements mineurs sont apportés au code (comme inverser un signe ou modifier une condition, par exemple changer un `+` en `-`).
2. **Exécution des tests** : La suite de tests existante est exécutée sur le code muté.
3. **Évaluation** : Si un test échoue, le mutant est dit "tué". Si le test réussit toujours, le mutant a survécu.

On obtient un **score de mutation** qui est calculé en fonction du pourcentage de mutants tués par rapport au nombre total de mutants créés. Par exemple, si sur 100 mutants, 37 ont été tués, le score de mutation sera de 37 %. ( 37% de bon tests en gros )

#### 3. **Comment utiliser mutalk, la bibliotheque qui permet de muter**
Voici les étapes principales de l'installation et de l'utilisation :
- Installation mutalk via Metacello.  
```
Deprecation activateTransformations: false.
Metacello new
  baseline: 'MuTalk';
  repository: 'github://pharo-contributions/mutalk:v2.5.0/src';
  load.
Metacello new
  baseline: 'AVLTesting';
  repository: 'github://avl-univ-lille/practice';
  load.
```
- analyser la qualité de test d'une bibliotheque, exemple avec le code suivant :
```
testCases :=  { UUIDPrimitivesTest }.
classesToMutate := { UUID. UUIDGenerator }.
analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
analysis run.
```

- obtenir le score de mutation :  
```analysis generalResult mutationScore```

- on peut également récupérer les mutants vivants via une interface graphique :
```alive := analysis generalResult aliveMutants.```

- l'objet **generalResult** qui donne accès à une interface graphique montrant les mutants survivants, mort, le code modifié etc :
```analysis generalResult.```

- obtenir les mutants survivants et en les regroupant par méthode :  
```
((analysis generalResult aliveMutants)
	groupedBy: [ :m |m mutant originalMethod ])
		associations sorted: [ :a :b | a value size > b value size ]
```

- **Autre outil utilisé (pour la couverture de code)** : 
  - L'outil **DrTest** pour analyser celle-ci.

### Points à retenir de l'analyse

#### 4. **Mutants vivants**
Les mutants vivants sont ceux qui n'ont pas été tués par les tests. Cela peut se produire pour plusieurs raisons :
- Les tests actuels ne couvrent pas suffisamment le code.
- La mutation a produit un code **équivalent**, c'est-à-dire que le comportement du programme n'a pas changé malgré la modification.
- La mutation a touché du **code mort**, c'est-à-dire du code qui n'est jamais exécuté.

#### 5. **Augmenter le score de mutation**
Pour augmenter le score de mutation, la première étape consiste à **ajouter des tests** supplémentaires qui couvrent les cas manquants. Dans l'exercice, nous avons ajouté la classe `UUIDTest` à la liste des tests, ce qui a amélioré le score de mutation. De plus, il est possible de revoir les méthodes ayant le plus de mutants vivants et d'écrire des tests supplémentaires pour couvrir ces cas.

#### 6. **Optimisation des performances des tests de mutation**

L'exécution de tests de mutation peut être coûteuse en temps, car chaque mutant doit être testé séparément. Dans l'exercice, on a appris plusieurs techniques pour améliorer l'efficacité :
1. **Arrêt au premier échec** : Arrêter l'analyse d'un mutant dès qu'un test échoue, ce qui permet de ne pas exécuter inutilement tous les tests.
2. **Sélection de tests** : Exécuter uniquement les tests qui couvrent les parties du code muté.
3. **Sélection de mutants** : Limiter le nombre de mutants à analyser, en utilisant un sous-ensemble représentatif.


### A propos du kata **Fix pawn moves!**

Tout d'abord, j'ai commencé par verifier le taux de couverture sur le coeur du projet, notamment le package Myg-Chess-Core qui est de 49,33% un taux normal car toutes les methodes ne sont pas testés, ne concernant pas mon kata.  
Les mutations vont donc s'attaquer aux tests disponibles, en particulier je vais me concentrer sur mes tests concernant les pions.
Voici les commandes que j'ai executé :
```
testCases :=  { MyPawnTests }.
classesToMutate := { MyPawn }.
analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
analysis run.

analysis generalResult mutationScore.

analysis generalResult.
```
Ces commandes m'ont ressorti un score de mutation de 38, soit 38% des tests sont performants.
Sur 101 mutants, 62 ont survecus et 39 sont morts. 
Des tests sont donc a améliorer, notamment je pensais aux tests que j'ai écris avec des valeurs bruts, par exemples :
```
testFirstMove 
	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).

	squares := pawn targetSquares.
	self
		assertCollection: squares
		includesAll:
			(#( e3 e4 ) collect: [ :name |
				 board at: name ])
```
```
testIfItIsTheFirstMove
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).
	self assert: pawn isFirstMove equals: true.
	board at: 'e3' put: (pawn := MyPawn white).
	self assert: pawn isFirstMove equals: false
```
Ils testent seulement 1 possibilité, surement pas assez donc je dois generaliser ce test a toutes les posibilités possibles, donc tester toutes les cases d'index 2 et d'index 7.

#### Concernant l'avancée du kata

La plupart des tests ressortant les bugs ont été realisé, meme si quelques uns sont a améliorer.
Le bug du premier mouvement a été resolu, les pions peuvent avancés de 2 cases maintenant.



## DASSI-Helyana

Ce que j'ai compris suite au TP :

La couverture de code mesure quelles lignes de code sont exécutées par les tests. PAS LEUR QUALITÉ.

Le score de mutation évalue la robustesse des tests (s'ils arrivent à détecter les erreurs (mutants) introduites dans le code).

mutant = modification volontaire de code pour tester l'efficacité des tests à détecter les erreurs.

Donc si un test échoue après la mutation, cela veut dire qu'il a détecté l'erreur.

mutant vivant = il est passé inaperçu et n'a pas été détecté par le test.
RAISONS :
- pas assez de tests 
- le code muté fait la même chose que l'original
- ou c'est un code mort donc jamais exécuté

En résumé :  
couverture de test = combien de lignes de code sont couvertes par les tests.

test de mutation = évalue si le code est exécuté mais aussi si les tests sont capables de détecter des erreurs potentielles dans ce code.
Évalue donc la qualité des tests.

J'ai aussi discuté avec 2-3 de mes camarades de classe pour leur expliquer ce que j'avais compris du mutation testing et nous avons pu échanger dessus avec des exemples également.

## CHESS GAME

Tous les tests de ce projet passent au vert, mais sont-ils vraiment efficaces ?

Avec une couverture de test de 45,64 %.

### Mini test : 

Je rencontre un premier test simple qui teste que l'id renvoie bien 'B', qui est vert.
J'ai essayé d'ajouter moi-même un mutant en changeant le 'B' par un 'C', le test a bien détecté l'erreur.

Ensuite, je cherche à exécuter la commande qui permet d'ajouter des mutants synthétiques :

- D'abord pour la classe MyKingTest, les 2 tests étaient verts.

```
smalltalk
testCases :=  { MyKingTest }.
classesToMutate := {MyKing }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
analysis generalResult mutationScore
```

Mais suite à cette commande qui a introduit des mutants dans le code, les tests ont échoué, ce qui signifie que les tests ont réussi à détecter les modifications introduites dans le code. C'est très bien, efficace.

Nous pouvons procéder de la même manière pour connaître l'efficacité des tests.

Je constate aussi que les méthodes simples comme id ont leurs tests qui restent au vert, mais cela ne signifie pas que la détection de mutants a échoué, cela signifie juste qu'il n'y a eu aucun mutant sur cette méthode simple.

