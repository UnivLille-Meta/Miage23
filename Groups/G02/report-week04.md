# Seïf-Eddin bouguerouche
## HomeWork
After executing Test i got realy bad Mutation percantage but avec looking a the test who survived i notice that it wasn't my methods so i change a bit the way to launch mutation testing on method and after launching it, it's was way better.

first execution :
```
testCases :=  { MyPawnTest }.
classesToMutate := { MyPawn }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.
```
  - result : `104 mutants, 37 killed, 67 alive, 0 terminated. Mutation Score: 35%.`

seconde one (an exemple on one methode I wrote) :

```
testCases :=  { MyPawnTest }.
methodToMutate := { MyPawn >> #canPromote  }.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.

analysis run.

analysis generalResult.
```
  - result : `39 mutants, 36 killed, 3 alive, 0 terminated. Mutation Score: 92%.`

Yes i can improve my text by changing the conditional or by xbor but with a 92% mutation score i decide that it was good enough to not change it.

During this week i learn more about correcting my test methode so i improve the strengh of the test and analyse a project to knwo if it's well tested.

# Camille BARTHELEMY
### HOMEWORK 4 

Cette semaine, j'ai appris ce que sont les tests de mutations. On réalise d'abord les tests qui passent vert, puis on modifie les classes et comportements de base et ainsi on peut vérifier que nos tests testent les comportements attendus (quand le test est rouge). Deux solutions sont alors possibles : 
- soit le test est toujours vert, cela signifie que le mutant est survivant. Le test n'est donc pas assez robuste et des régressions pourraient être introduites dans le code. 
- soit le test est rouge, cela signifie que le mutant est tué. Le test couvre bien du code testé.
Cela est fait de façon automatisé dans Pharo, j'ai pu l’observer lors de la réalisation de l'exercice sur les mutations sur le Network-UUID.

J'ai aussi réalisé des tests de mutations sur les nouveaux tests que je viens de faire.
Grâce aux lignes suivantes:
```
testCases :=  { MyChessSquareTest }.
classesToMutate := { MyChessSquare }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
```
 Je remarque que mes tests (que j'ai ajoutés sur le projet Chess) couvrent bien la totalité des cas possibles. Cela va alors me permettre de pouvoir réaliser le refactoring sans me soucier de la régression (uniquement à propos des méthodes que j'ai déjà testées).

```
testCases :=  { MyChessSquareTest }.
methodToMutate := { MyChessSquare >> #renderPawn: }.

analysis := MTAnalysis new
    testClasses: testCases;
    methodsToMutate: methodToMutate.

analysis run.

analysis generalResult.
```

Pour le code coverage, je suis actuellement à 46,67%, ce score est très bas. Je vais donc ajouter des tests, afin de pouvoir faire des modifications plus sereinement. J'ai également remarqué qu'il y avait 80 méthodes “uncovered”. Et 2 méthodes sont partiellement testées. Dans MyChessSquare #initialize (uniquement le self click) et dans MyPiece la méthode collectSquares:while: (uniquement le targets add: next)

J'ai donc continué les tests sur mon projet. L'objectif étant d'obtenir un coverage proche de 100%, mais qui ne sera pas forcément atteint. En effet selon moi il n'est pas essentiel de tester toutes les méthodes notamment les getters et setters.

Aide aux camarades: 
- J'ai expliqué à Meryem du groupe 1 comment cloner son projet depuis l'IDE Pharo. Je lui ai également montré comment créer sa clé ssh afin de pouvoir interagir avec git depuis Pharo. 
- J'ai expliqué à Florine pourquoi il vaut mieux mettre une assertion par test lorsque cela traite de cas différents (1 cas = 1 test). Je lui ai également montré comment faire des protocoles pour classifier les tests par méthodes par exemple.

# Maggy ANDRIA

## Mutation

### Code coverage :

- on va dans test coverage, network test, run coverage ensuite ça affiche
  Network UUID c’est 79,59 % code coverage
  il y a 10 uncoverd method et 6 partiellement coverd method
  par exemple dans clockSequence (partiellement coverd method) ça m’a affiché 83,33 % et c’est déjà bien.Il y a 2 Uncoverd methods et 0 Partially covered methods.
  Network test donne 83,3 % et le network UUID 79,59 %
  mocksocket est une simulation d'une connexion réseau qui permet de tester des applications sans avoir besoin d'une connexion réelle

- uncovered methods( méthodes non couvertes) [pas executer lors d’un test unitaire]pour les test qui sont pas bien testé, que des codes sont inutilisés ou pas bien couvertes et ou incomplets ét qui sont génerelament à améliorer.
  Tandis que les partially covered methods [partiellement executer] mais pas dans leurs intégrales

- Pour la mutation c’est vraiment different comme celles des test en généralement (genre si c’est vert c’est bin passé et si c’est rouge il y a erreur)
  Ici c’est plus si c’est rouge, le mutant est mort et si c’est vert c’ est que le mutant a survi.

Par exemple dans le

clockSequence
"Returns the clock sequence for Verison 1 UUIDs. See https://tools.ietf.org/html/rfc4122"
self isTimeBased ifFalse: [
self error: 'Only time-based UUIDs have a timestamp.' ].
^ (uuidData at: 9) & 16r3f << 8 + (uuidData at: 10)

^ (uuidData at: 9) & 16r3f << 8 + (uuidData at: 10) est en vert.

Mutation testing c’est pour évaluer la qualité des test
Test coverage mesure le pourcentage du code à executer
Et mutation testing évalue la qualité du test.
Le test devrait échouer si mes test sont bons et dans le cas contraire ne sont pas sensibles aux erreurs possible de la logique.

### but mutation testing

Trouver les failles dans une code c’est à dire pour qu’il n’y ai pas de dégats ultérieurement si on y insère.
Mon Kata est le graphic éditor.
Clique editor et chagement de comportement des diverses échequier [pour la mutation]
J’ai longument chercher à faire
J’avais idée précedement de faire clique droite sur la case pour faire l’ajout ou suppression de la pièce mais après longument de recherche je ne suis pas s’il y a d’event clic droit ou double clic.

### Process projet

Le processus que j’entamme mon projet est de mettre un bouton edit.
Après avoir appuyer sur le bouton edit, je pourrais accéder aux boutonx suppresion, mais également les différentes pièces (roi, reine, fou, cheval, tour, pion) pour les ajouts et finalement le bouton finish pour ainsi remêtre au jeu (play).

Concernant la suppression, j’en ai cherché s’il y en avait déjà de l’implentation, mais j’en ai identifié la méthode moveTo qui permet de vider le contenu square emptyContents auquel je vais utilser pour le moment.
Par la suite, étant donnés que dans l’edification de l’échiquer je n’aurais pas besoins des historiques des mouvements, je vais en ajouter des conditions dans move [self recordMovementOf: piece to: square].
Je créerais ensuite les divers boutons des pièces pour l’ajouts. Et je vais en profiter pour l’utilisation des renderingKing ou Queen ou bishop …. . pour leurs affichages.
Par la suite, pour un surplus, je mettrais comme actions de toutes les pions comme le rôle d’une reine, lui permettant de se déplacer.

### Question

- Je veux créer un bouton dans une classe qui va être rendu dans une autre classe. Comment le faire?

ex: self addChild: pane et c'est le self que je veux changer en une autre classe.
(board dans le game mais ça n'a pas marché.)

- comment résoudre l'erreur nil?
  _un genre de null pointeur l'erreur (ou similaire) => was set to nul_.... l'erreur qui m'arrive à chaque fois lorsque j'ai déclarer une fonction et lorsque je l'appelle
  ex: J'ai fait square et ensuite border: Color red. **#border was send to nil**

- Quels sont les proporiétés pour le positionnement dans une layout? (j'en ai consulté des documentation mais pas très claires)
  ex: topLeft

- Comment accéder à une variable n'importe où?
  ex: Je veux créer un bouton edit -> state qui modifier le comportement des pièces .Donc ce state doit modifier les comportements des autres classes.
