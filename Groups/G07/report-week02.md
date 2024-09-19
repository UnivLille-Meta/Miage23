# ZIANE CHAOUCHE LOUIZA

## HomeWork :

Pendant ce cours, nous avons exploré les concepts fondamentaux autour de l'envoi de messages en Pharo. 

---

### Message Dispatch in Pharo :

### 1. Utilisation de Self et Super :

self et super sont des mots-clés utilisés pour définir quel contexte ou quelle classe doit être utilisée pour résoudre une méthode.
    
  * self :
  - self fait référence à l'objet actuel qui reçoit le message.
  Lorsqu'on utilise 'self' pour appeler une méthode, Pharo cherchera la méthode dans la classe de l'objet qui appelle.

  * super :
  - Représente également l'objet courant qui reçoit le message.
 Lorsque super est utilisé, Pharo cherche la méthode dans la classe parente, et non dans la classe actuelle.


---

### 2. Utilisation de l'Héritage :

L'héritage  permet à une classe d'hériter des méthodes et attributs d'une autre classe, généralement appelée la classe parente ou super-classe.
  * Lorsqu'un objet reçoit un message, Pharo cherche d'abord la méthode dans la classe de l'objet.
  * Si la méthode n'y est pas définie, Pharo remonte dans la chaîne d'héritage et vérifie dans la classe parente, puis dans la classe parente de celle-ci, et ainsi de suite.


- Exemple :

```
    Oiseau >> voler [
        Transcript show: 'L\'oiseau vole'; cr.
    ]


    Pingouin >> voler [
        Transcript show: 'Les pingouins ne peuvent pas voler'; cr.
    ]

| oiseau pingouin |
oiseau := Oiseau new.
pingouin := Pingouin new.

oiseau voler.   "J'attends : L'oiseau vole"
pingouin voler. "J'attends : Les pingouins ne peuvent pas voler"

```
* Réalité :

Le résultat est conforme aux attentes :
--> Pharo suit un dispatch simple. Quand voler est appelé sur une instance de Pingouin, Pharo utilise la méthode redéfinie dans la classe Pingouin, même si cette dernière hérite de Oiseau.

---

### 3. Utilisation des Booléens et conditionals pour contrôler le Dispatch:

Les conditions booléennes peuvent être utilisées pour décider quelle méthode appeler, modifiant ainsi le dispatch.

---

#### | (OR operator) :

* La méthode | (ou logique) retourne true si l'un des deux booléens est vrai.

- Exemple 1 :

``` pharo
| temperature |
temperature := 22.

(temperature >= 25) ifTrue: [
    Transcript show: 'La piece est chaude'; cr.
] ifFalse: [
    (temperature >= 18 and: [temperature < 25]) ifTrue: [
        Transcript show: 'La piece est confortable'; cr.
    ] ifFalse: [
        Transcript show: 'La piece est froide'; cr.
    ].
].
```
- Exemple 2 :

``` pharo
true | false  "Retourne true"
false | true  "Retourne true"
false | false "Retourne false"
```

---

#### Méthode or:

La méthode or: prend un bloc en argument et retourne true si le récepteur est true. Si le récepteur est false, elle évalue le bloc donné.

``` pharo
or: aBlock
    ^self ifTrue: [true] ifFalse: [aBlock value]
```
- Exemple : 

``` pharo
| estConnecte modeHorsLigne |

estConnecte := false.
modeHorsLigne := true.

"Si estConnecte est false, on vérifie le mode hors ligne."
estConnecte or: [
    modeHorsLigne ifTrue: [
        Transcript show: 'Mode hors ligne activé'; cr.
    ] ifFalse: [
        Transcript show: 'Pas de connexion, ni de mode hors ligne'; cr.
    ].
].
```
--> Renvoie : Mode hors ligne activé.

---

#### Méthode ifTrue:ifFalse:

Cette méthode prend deux blocs, le premier pour le cas true, le second pour le cas false. Elle évalue et retourne le résultat du bloc approprié.

- Exemple :

``` pharo
| nombre |
nombre := 7.

(nombre \\ 2 = 0)
    ifTrue: [
        Transcript show: 'Le nombre est pair'; cr.
    ]
    ifFalse: [
        Transcript show: 'Le nombre est impair'; cr.
    ].
  ```

--> Renvoie : Le nombre est impair


## Rapport :

* J'ai travaillé sur l'exercice consistant à comparer self == super. Comme attendu, l'expression retourne toujours true, car self et super pointent tous deux vers la même instance.

```
    TestClass >> testComparison [
        ^ self == super. "Renvoie toujours true"
  ]
```

* Ensuite, j'ai implémenté les méthodes booléennes dans la partie " Utilisation des Booléens et conditionals pour contrôler le Dispatch", j'ai également testé ces méthodes sur plusieurs cas pour m'assurer qu'elles fonctionnent comme prévu, et les résultats étaient corrects.

* J'ai également réalisé les exercices proposés dans Flags.pdf ainsi que ceux sur le DSL.
--> Le code correspondant aux exercices est disponible dans mon dépôt GitHub, que vous pouvez consulter via le lien suivant :
  https://github.com/LouizaZC/C3P/tree/master

---

# Wassim ABOU DAHER

 ## Message Dispatch Practice

**Objective:** The goal was to practice message dispatch in Pharo by implementing and testing a class to handle different types of arguments using message dispatch mechanisms.

1. Implementation:

I created a class named DispatchHandler to demonstrate message dispatch. The class includes methods for multiplying numbers, concatenating strings, and handling various argument types. The dispatcher:and: method uses message dispatch to handle different cases based on the types of arguments provided.


2. Testing:

I wrote test cases to ensure that the class methods behave as expected. The tests check whether the multiplication of two numbers, concatenation of two strings, and unsupported cases return the correct results.

3. Conclusion:

The implementation met the expected behavior for handling different argument types. The multiplyTwoNumbers:and: method correctly returns the product of two integers, concatTwoStrings:and: returns the concatenated string, and dispatcher:and: handles unsupported cases as expected.

Use of Conditionals: Initially, I used conditionals (ifTrue:) to determine which method to call based on argument types. However, I learned that message dispatch can often replace explicit conditionals. Each message sent can be seen as a form of conditional logic.
I'm not sure but due to what i have read on stackoverflow this may be the solution.

4. Code Repository:

You can find the code and test cases I used in my GitHub repository: https://github.com/wassimAbouDaher/Dispatch.git

# Meryem EL ELKOURAICHI

## Qu'est-ce que le double dispatch ?
Le double dispatch permet à 2 objets de déterminer quel comportement utiliser, selon leur type respectif. </br>

Exemple concret en Pharo : </br>

On va créer une classe de base pour les animaux et une autre pour la nourriture. </br>

Ensuite on va créer les sous-classes `Cat` et `Dog`  pour les types spécifiques d'animaux et les sous-classes `Meat` et `Fish` pour les types de nourriture. </br>

On va implémenter la méthode `eat:` dans la classe `Animal`. L'animal ne sait pas comment manger cette nourriture, Il délègue donc cette tâche à la nourriture elle-même. C'est la première étape du double dispatch . </br> 

## étape 1 : 
```pharo
eat: aFood
    ^ aFood handleEatingBy: self.
```

Cela signifie que l’animal appelle la méthode handleEatingBy: sur la nourriture. L’animal passe lui-même (le chat ou le chien) en argument à cette méthode. </br>

## étape 2 : implémenter `handeEatingBy` dans la classe Food

Chaque type de nourriture va maintenant décider comment elle doit réagir en fonction du type d'animal qui essaye de la manger. C’est ici qu’intervient la deuxième étape du double dispatch. </br> 

Dans la classe `Meat` :

```pharo
 handleEatingBy: anAnimal
    ^ anAnimal eatMeat: self.
```

Dans la classe `Fish` : 

```pharo
 handleEatingBy: anAnimal
    ^ anAnimal eatFish: self.
```

Chaque type de nourriture appelle une méthode spécifique de l’animal en fonction de son type (par exemple, eatMeat: pour la viande). </br> 

## étape 3: implémenter les comportements spécifiques pour chaque animal : 

Dans la classe `Cat` :

```pharo
 eatMeat: aMeat
    ^ 'Le chat dévore la viande sauvagement'.
```
```pharo
 eatFish: aFish
    ^ 'Le chat mange du poisson doucement'.
```

Dans la classe `Dog` :

```pharo
 eatMeat: aMeat
    ^ 'Le chien dévore la viande sauvagement'.
```
```pharo
 eatFish: aFish
    ^ 'Le chien mange le poisson doucement'.
```

## étape 4 : Tester 
```pharo
cat := Cat new.
dog := Dog new.
meat := Meat new.
fish := Fish new.
cat eat: meat. 
cat eat: fish.
dog eat: meat. 
dog eat: fish.
```
en sortie :

```pharo
 'Le chat dévore la viande sauvagement'
 'Le chat mange du poisson doucement'
 'Le chien dévore la viande sauvagement'
 'Le chien mange le poisson doucement'
```

Le double dispatch fonctionne en deux étapes : </br>

- L'animal appelle la méthode eat: avec la nourriture comme argument. </br>
- La nourriture appelle une méthode spécifique de l'animal (comme eatMeat: ou eatFish:), en fonction de son propre type. </br>

Le double dispatch permet ainsi de gérer des interactions complexes entre deux objets en fonction de leur type respectif. </br>
