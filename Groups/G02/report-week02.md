# Report Week 2

## Bouguerouche Seïf-Eddin

### exercice : 
  - I implements methods `|`:
      ```smaltalk
        True >> | aBoolean [
          ^ true
        ]

        False >> | aBoolean [
            ^ aBoolean
        ]
      ```
  - I implements methods `or:`:
    ```smaltalk
      True >> or: aBlock [
          ^ true
      ]
      
      False >> or: aBlock [
          ^ aBlock value
      ]
    ```
  - I implements methods `or:`:
      ```smaltalk
        True >> ifTrue: trueBlock ifFalse: falseBlock [
          ^ trueBlock value
        ]
      
        False >> ifTrue: trueBlock ifFalse: falseBlock [
            ^ falseBlock value
        ]
      ```
  - About the super i decide to rewirte the exemple from the course and debug it (git hub link bellow of what i did) D and E correspond to 2 secondes exemple with super beside upser == self because point on the same object : [https://github.com/Jogozan/week2](https://github.com/Jogozan/week2/tree/master/week2)

### Homerwork 
this is what i do : https://github.com/Jogozan/week2/tree/master/Dispatch
and the result i get with this code :

playground :
```
| anAnimal aBird aParrot aSparrow |

anAnimal := Animal new.
aBird := Bird new.
aParrot := Parrot new.
aSparrow := Sparrow new.

Transcript show: anAnimal speak; cr. 
Transcript show: aBird speak; cr. 
Transcript show: aParrot speak; cr.
Transcript show: aSparrow speak; cr.
```
result : 
```
Some generic animal sound
BIRD
PARROT
SPARROW
```

## Camille BARTHELEMY
Pour cette semaine j'ai expérimenté le dispatch.
J'ai découvert qu'il en existe différents types.

### Single Dispatch
La méthode est choisie en fonction du type de l'objet receveur. C'est le type de dispatch par défaut valable pour tout les envoi de message classique comme dans MyCounter par exemple.

### Double Dispatch
Je pense que le double dispatch c'est lorsque le choix de l'envoi de message dépend du type de deux objets.
Par exemple le réparateur qui peut réparer un vélo mais également des voitures. On créer alors un classe Véhicule dont hérite Vélo et Voiture qui disposent chacun de méthodes accepteReparateur. Puis un réparateur qui disposent d'une méthode visiteVelo et visiteVoiture.
J'ai commencé par réaliser les tests:
```
testReparationVelo
 self assert: (velo accepteReparateur: reparateur) equals: 'Réparation du vélo'.

testReparationVoiture
 self assert: (voiture accepteReparateur: reparateur) equals: 'Réparation de la voiture'.
```
Dans la classe Reparateur : 
```
repareVelo: velo
^'Réparation du vélo'.

repareVoiture: voiture
^'Réparation de la voiture'.
```
Dans la classe Véhicule :
```
accepteReparateur: reparateur
  self subclassResponsibility.
```
Dans la classe Velo
```
accepteReparateur: reparateur
^ reparateur repareVelo: self.
```
Dans la classe Voiture
```
accepteReparateur: reparateur
^ reparateur repareVoiture: self.
```
Cela permet alors de conclure que le double dispatch permet d'étendre facilement les véhicules. On pourrait facilement ajouter des motos ou d'autres véhicules. Cela respecte le principe ouvert aux extensions mais fermé aux modifications (**open/closed principle**).

## ANDRIAMBELOMAHERY SAM-Y MAGGY :

## Conditions/ Boucles/ expressions booléennes

checkAge: age
(self isAdult: age)
ifTrue: [ ^ 'Vous êtes adultes' ].

    age > 12
        ifTrue: [ ^ 'Vous êtes adolescents' ].

    ^ 'Vous êtes enfant'.

| x |
x := Evaluation new.
x checkAge: 23.
return
Vous êtes adultes

Ensuite j’ai fait
showNumber: n
1 to: n do: [:i |
i even
ifTrue: [
Transcript
nextPutAll: i printString; nextPutAll: ' est pair'; cr]
ifFalse: [
Transcript
nextPutAll: i printString; nextPutAll: ' est impair'; cr]].

| x |
x := Evaluation new.
x showNumber: 23.

mais ça me retounr toujours self.et je ne comprends pas.

## OOP

Un design monolithique siginifie que tout système repose sur une seule structure unifiée.
Et là on va voir le “système rigide” vers une solution plus flexible.
Et ils sont souvent faciles à démarer mais difficile à maintenir après. Du coup les microservices ou systèmes modulaires sont mieux adaptés.

Self en pharo est équivaux à this en java. Ils permettent de faire réferencier à l’objet actuel dans lequel le code est exécuté (de travailler avec ses attributs et méthodes).

### Constructor

Voici une exemple de constructeur:
humain: nam age: ag
| h |
h := self class new.
h name: nam.
h age: ag.
^ h

ou bien

identityHuman: niv parcours: parc
| h |
h := self class new.
h niveau: niv.
h parcours: parc.
^ h

| x |
x := Humain new.
x identityHuman: 'M1' parcours: 'MIAGE'.

### NotExample

l’opérateur not est utilisé pour inverser les booléens

ex:
|| isStudent |
isStudent := true.
(isStudent not)
ifFalse: [ 'This person is a student.' ]
ifTrue: [ 'This person is not a student.' ].

result:
This person is a student.

[faux + faux => true] et [faux + vrai => faux]

### Dispatch

Le concept du dispatch est “comment l’objet décide de répondre aux messages (via méthode) que je lui envoie?”

Pour voir une exemple basique, on va créer une méthode “introduce” pour présenter une personne
ex:
introduce: string
^ 'je me présente: ', string

| x |
x := Humain new.
x introduce: 'Maggy'.
result:
je me présente: Maggy

ou bien
speak
^ 'Hii guys! '

| x |
x := Humain new.
x speak.
Result:
Hii guys!

### Inheritance

En associant le dispatch avec l’héritage, les sous classes bénéficent des méthodes définies dans les super-classes.

Il y a plusieurs formes d’héritages,
Voyant tout d’abord avec le

- hériage simple (classe enfant hérite d'une classe parent)
  Humain << #Woman

specify
^ 'Je suis une fille '

playground:
| x |
x := Woman new.
x specify.
Result:
Je suis une fille

et si
x speak.
Result:
Hii guys!

- Surcharge (redéfinition d’une méthode)
  ou on le connaît aussi sous le nom polymorphisme [Liaison tardive] permettant une grande flexibilité dans le code
  Du coup si on surcharge speak dans Woman:
  speak
  ^ 'Bonjour tout le monde! Je suis une fille '

le reulst sera :
Bonjour tout le monde! Je suis une fille  
avec
x speak.

- héritage multiple
  malheuresment il n’y a pas d’héritage multiple

- héritage multiniveau
  Pour mieux le comprendre on va s’orienter sur 3 classes: A, B et C.
  A a deux méthode: 1) foo => foo retourne 10 2) bar => self foo

B n’a pas de méthode
et C a une méthode foo qui retourne 50

Tout les petits exercices pour mieux comprendre les héritages (classe A, B, et C) pour super et self ; et pour plus d’illustration [lien github week2](https://github.com/s-mgy/c3p)

Il y a 2 étapes lorsqu’il un objet recoit un message:

1. la recherche (ou lookup en anglais) [Si la classe ne trouve pas ce qu’il cherche, ça va dans les super-classes et ainsi de suite.]
2. la méthode d’exécution

_le lookup s’arrete dès qu’il a trouvé ce qu’il cherche_

### Recursion

Ce qui est bien à connaître aussi c’est concernant les recursions.
2 éléments essentiels sur:

1.  Cas de base (qui mets fin à la recursion)
    somme: n

        n = 0 ifTrue: [ ^ 0 ].

        ^ n + (self somme: n – 1)

    | x |
    x := Evaluation new.
    x somme: 5.

return:
15

2.  Cas récursif (fonction où elle s’appelle elle même)
    ex:
    factoriel: n

        ^ n <= 1
        	ifTrue: [ 1 ]
        	ifFalse: [ n * (self factoriel: n - 1 ) ].

| x |
x := Evaluation new.
x factoriel: 5.
return:
120

self c’est la classe (objet) qui fait la recherche.[ qui a fait genre l’init de l’appel]. Self represente toujours le receiver.
Contrairement à super qui cherche directement dans la super-classes

