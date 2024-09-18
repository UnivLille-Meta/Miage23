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
