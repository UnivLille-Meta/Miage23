## DASSI-Helyana

# WEEK 3 :

## HOMEWORK : 

### Objects vs. Data

Objet : On peut y stocker des valeurs mais aussi on peut les manipuler. "L'objet encapsule la logique et laisse le client réutiliser cette logique"

Data : Un ensemble de données  

encapsulation : on regroupe les données (attributs) et les comportements(méthodes) d'un objet au sein d'une classe. ce qui permet de soit protéger nos données ou de le utiliser à l'exterieur de la classe avc les bonnes méthodes.  (public ou getter/setter)

Poor API vs Good API
-Une Poor API expose les données et n'offre pas de logique d'encapsulation. = strict minimum 

comme on peut voir sur la diapo de l'image : 
Chaque user qui utilise l'objet point implémente sa propre version de "degrees" ce qui montre que 2 users peuvent avoir le même code. 
L'objet point ne fournis que les méthodes de base et oublie dautre compportement utiles c'est pq les users les rajoutes eux même.

- Une Good API fournit tout les comportements nécessaires.

Sur la diapo les users n'ont pas besoin de recréer des comportements car ils sont déjà diponibles.
ce qui évite la duplicatoin de code.

### ABout global variables

Les variables globales sont partagées globalement, donc accessibles de partout ce qui peut signifier que bcp de partie du code peuvent dépendre de ces variables pour fonctionner = difficile de tester. 
De même pour les singletons. 

A préferer : 
chaque objet doit avoir accès a ce dont il a besoin pour fonctionner plutôt que d'utilise des é disponibles pour tout le monde. 

### Global to parameter

Eviter les variables globales car tjrs le même pb : 
A préferer : 
 utiliser des variables d'instances avc des paramètres  


## Extras about language

**SUPER** : 
self se réfère toujours au receveur de la méthode en cours d'exécution. super se réfère aussi au receveur de la méthode en cours, mais quand on envoie un message à super, la recherche de méthode change en démarrant de la super-classe relative à la classe contenant la méthode qui utilise super.  

Super est statique et se réfère toujours à la superclasse tandis que self est dynamique.

### Really Understanding Class Methods

 ""Méthode d'instance : Elle est appelée sur un objet.
Méthode de classe : Elle est appelée sur la classe.""

il existe une seule méthode de recherche pour les méthodes d'instance et les méthodes de classe = **le processus de recherche est identique.** 

LOrsque j'appelle la méthode à un objet, la recherche commence dans la classe de cet objet, si on trouve la méthode dans cette classe on l'execute sinon on recherche dans la super classe et ainsi de suite jusqu'à la trouver. 

**Envoie de message**
1) on recherche la méthode correspondant au message 
2) la méthode est executer sur l"objet recepteur

**Envoie de message à une classe**
1) on recherche dans cette classe
2) sinon on recherche en remontant les classes jusqu'on trouve la méthode


**Une classe est une instance d'une autre classe on l'appelle métaclasse**

en pharo tout est objet meme les classes c'est pour ça qu'elles peuvent recevoir des messages.

### exemple

Prenons l'exemple de véhicules avec des sous classes comme voiture ou vélos :

on créer notre classe mère Vehicule : 

```
Vehicle
	slots: { #couleur };
	package: 'Route'
```

on créer donc une méthode pour initialiser la couleur : 
```
initialize
    couleur := 'rouge'
```

ENsuite on créer la méthode qui va créer et initialiser la nvl instance de véhicule comme vu en cours :
```
Vehicule class >> new
    | inst |
    inst := super new.
    inst initialize.
    ^ inst
```
( point cours : 
inst = l'instance quon créer de la classe Vehicule
super = c'est la ref à la superclasse de Vehicule 
super new = on creer linstance avant de l'init) 

Ensuite on crée les sous classes : 
```
Object subclass << #Voiture
	slots: { #marque };
	package: 'Route'
```

On init : 
```
initialize
    super initialize.
    marque := 'Porsche '.
```

et ensuite on peux tester : 

```
| voiture |  (on crer notre variable)
voiture := Voiture new. (ici notre instance de voiture  et new est trouve dans la classe mere ca elle ne trouve pas dans voiture)
 
```


### Project milestone 1 


Choix KATA :  

J'ai choisis de prendre la kata : Remove nil checks qui permettra l'amelioration de code en utilisant le polymorphisme( méthode qui peut avoir plusieurs comportements selon l'objet sur lequel elle est appelée) .  


## EL MANSOURI Yacine

### Watch at home: about design (Resumé des cours)

1. Global to Parameter
L'utilisation de variables globales ( et les singletons ) fait ressortir des problemes tels que des dépendances difficiles à gérer, rendent les tests complexes et rendent la modularité du code plus faible. Il existe des alternatives/solutions pour les remplacer, notamment par des paramètres locaux ou des variables d'instance qui mettront en oeuvre l'encapsulation et la localité.
- Exemple : 
```
RubScrollTextMorph >> defaultScrollTarget
    | textArea |
    textArea := self textAreaClass new.
    textArea backgroundColor: Color lightGray veryMuchLighter.
    ^ textArea
```
```
RubScrollTextMorph >> defaultScrollTarget
    | textArea |
    textArea := self textAreaClass new.
    textArea backgroundColor: defaultBackgroundColor.
    ^ textArea
  
RubScrollTextMorph >> initialize
    defaultBackgroundColor := Color lightGray veryMuchLighter
```
- Conclusion : 
Il est essentiel d'éviter les variables globales et d'utiliser à la place la paramétrisation. Cela améliorera la modularité du code, permettra de substituer les composants plus facilement, et rendra les tests unitaires meilleurs.

2. Objects vs Data
En Java, les objets, par exemple l'objet Point sont de simples structures de données avec des méthodes basiques comme getX, getY, move. Cela limite les comportements que les objets peuvent offrir et donc ce qui force les développeurs à dupliquer/developper du code en plus pour les manipuler dans les clients.
En revanche, les objets en Pharo, reprenons l'exemple de Point offrent une API beaucoup plus riche, avec des méthodes pour les opérations vectorielles, géométriques et mathématiques comme crossProduct:, dotProduct:, distanceTo:, etc. Cela permet aux clients de simplement réutiliser ces comportements sans les redéfinir.
- Exemple :
En Java, pour déplacer un robot à une certaine distance, on doit calculer manuellement la nouvelle position du point :
```
position = new Point(
(Math.round(Math.cos(Math.toRadians(tilt))) * distance + position.x()),
(Math.round(Math.sin(Math.toRadians(tilt))) * distance + position.y()));
```
En Pharo, le même déplacement est plus élégant car Point connaît son propre comportement :
```
Bot >> go: aDistance
    position := position + ((tilt degreeCos @ tilt degreeSin) * aDistance) rounded.
```
- Conclusion : 
Les objets sont plus que des conteneurs de données. Ils doivent encapsuler le comportement et offrir des services réutilisables. Donc une API bien conçue permet d'éviter la duplication de code et favorise la modularité.

3. About Global Variables
Les variables globales posent problème dans les systèmes logiciels.
Par exemple, prenons Smalltalk icons (utilisée pour gérer des icônes dans Pharo), elle limite la flexibilité car il devient impossible d'avoir plusieurs jeux d'icônes spécifiques à une application ou de tester différentes configurations.
Parfois, des globales sont dissimulées derrière des extensions de classe (comme Symbol>>asIcon qui retourne une icône). Même si cela rend l'utilisation plus compacte, cela reste un problème car tout repose toujours sur une seule variable globale.
Pour améliorer la modularité, il est proposé de déplacer ces références globales dans des variables d'instance spécifiques aux objets. Par exemple, au lieu de référencer directement Smalltalk tools, on pourrait créer un ToolEnvironment que chaque application peut configurer individuellement (i.e encapsuler cette logique dans un environnement dédié).
- Exemple :
```
MyApp >> initialize
    toolEnvironment := ToolEnvironment new.
```
```
MyApp >> browseMethodFull
    self toolEnvironment browser
    openOnClass: self currentClassOrMetaClass
    selector: self currentMessageName.
```
- Conclusion : 
Il est préférable d'éviter les globales et de penser en termes de modularité. Les objets doivent être capables de se spécialiser en fonction du contexte sans se reposer sur des variables partagées globalement.

### Extras about language
- Write small code examples showing how they work and challenging your understanding. Do they work as expected? How can you get a better understanding on their functionning? Add your examples and answers to the report

1. Méthodes de classe
- Résumé des concepts :
Une classe est un objet : En Pharo, une classe est elle-même un objet qui peut recevoir des messages.
- Méthodes de classe vs méthodes d'instance : Les méthodes de classe ne sont pas équivalentes aux méthodes statiques en Java. Elles sont envoyées à l'objet "classe", qui est une instance d'une métaclasse.
- Recherche de méthode (lookup) : Il n'existe qu'un seul algorithme de recherche pour les méthodes. Que l'on envoie un message à une instance ou à une classe, Pharo commence par chercher la méthode dans la classe du récepteur puis remonte la chaîne des superclasses si nécessaire.
- Exemple de code : Création de la classe Counter avec une méthode d'instance et une méthode de classe"
```
Counter class >> withValue: anInteger
    ^ self new
        value: anInteger;
        yourself.

Counter >> value: anInteger 
    value := anInteger.
```

- Test du fonctionnement
```
| myCounter |
myCounter := Counter withValue: 10.
Transcript show: myCounter; cr.
```

- Fonctionne-t-il comme prévu ? 
Oui, l'exemple fonctionne. La méthode de classe withValue: crée une nouvelle instance de Counter, assigne 10 à value, et renvoie l'objet. Le message est envoyé correctement à la classe.

2. Comprendre super
- Résumé des concepts :
super est le récepteur du message : Lorsqu'on utilise super, on envoie un message à la même instance qu'avec self, mais la recherche de la méthode commence dans la superclasse de la classe qui contient l'expression.
- Exemple d'utilisation de super : Utiliser super dans une méthode permet d’appeler la version héritée d’une méthode tout en pouvant ajouter des comportements spécifiques.
Exemple de code : super dans une méthode d'instance
```
Animal >> makeSound 
    ^ 'My sound :'.
```
```
Dog >> makeSound 
    ^ super makeSound , ' Woof'.
```
Ici, Dog hérite de la classe Animal. La méthode makeSound dans Dog utilise super pour appeler la méthode makeSound de Animal avant d'ajouter le son spécifique "Woof".
- Test du fonctionnement
| myDog |
myDog := Dog new.
Transcript show: myDog makeSound; cr
.
- Fonctionne-t-il comme prévu ? Oui. La méthode makeSound de Dog appelle la version de Animal puis concatène " Woof". Le résultat affiché sera "My sound : Woof".
- Meilleure compréhension
En utilisant super, on s’assure que la méthode de la classe parente est exécutée, ce qui permet de réutiliser du code tout en modifiant le comportement dans les sous-classes. Cela montre que super n’est pas une référence directe à la superclasse, mais modifie simplement le point de départ de la recherche de méthode.

### Project milestone 1

- You should have already started with at least one kata
- At the minimum, you should have started to write tests to understand the existing code and the required features

Pour le projet, j'ai decidé de choisir le kata **Fix pawn moves!**. 
Pour commencer, j'ai manipulé l'interface graphique du jeu d'echec afin de mieux cerner le projet. J'ai donc repérer les mauvais comportements concernant le mouvement des pions.
Notamment :
- le premier mouvement des pions ne peut etre que de 1 seulement a la place de 2.
- on mange une piece par un mouvement en avant au lieu d'un mouvement en diagonale.
- un pion peut se deplacer sur sa meme place d'origine

Une fois cela de fait, j'ai alors parcouru le code pour savoir où et comment était codé ces comportements de deplacement.

Dès a present je vais devoir ecrire les tests illustrant ces bugs, et regler le code afin de les faire passer au vert en tant que bon pratiquant du TDD.
