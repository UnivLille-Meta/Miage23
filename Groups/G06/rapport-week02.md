# Mohamed Yassine Aloui Section

Après avoir regardé les vidéos et les PDF, j'ai compris ces concepts :

- **Dispatch** : Comment Pharo choisit la méthode à exécuter.
- **Inheritance (héritage)** : Les classes peuvent hériter des méthodes de leur classe mère. Si une méthode n'est pas trouvée dans la classe actuelle, Pharo cherche dans la classe mère, en prenant en considération `super` et `self`.
- **La recherche de méthode** : En Pharo, la recherche de méthode suit la hiérarchie de classes en remontant dans les classes mères.
- **Super et self** :
  - `super` et `self` pointent tous les deux vers le même objet, mais `self` indique à Pharo de chercher la méthode dans la classe de l'objet. Si la méthode n'est pas trouvée, Pharo remonte la hiérarchie.
  - `super`, en revanche, commence directement la recherche dans la classe mère.
- **Délégation** : Permet de donner la responsabilité d'une tâche à un autre objet. Par exemple, dans l'exemple du parser, on peut créer deux objets, chacun capable de parser un document selon le type demandé. Si c'est un fichier `.md`, on affecte l'objet capable de parser les fichiers `.md`.

## Exercices

Ensuite, j'ai créé une classe `Truee` pour implémenter les méthodes `not` et `or`, ainsi que les conditions `ifTrue:` et `ifFalse:`.

Il faut créer deux classes : `Truee` et `Falsee`. Chacune contient ses propres méthodes `or`, `and`, `not`, ainsi que les conditions `ifTrue:` et `ifFalse:`.

### Classe `Truee`
Puisque True | everything retourne toujours True, l'implémentation sera comme ceci :


``` Truee >> | aBoolean [
	^ self.
]  ```
Implémentation de ifTrue: et ifFalse: dans la classe Truee :
Truee >> ifTrue: trueBlock [
	^ trueBlock value.
]
```
Truee >> ifFalse: falseBlock [
	^ self.  "Ne rien faire"
]
```
Classe Falsee

```Boolean subclass: #Falsee
	layout: FixedLayout;
	traits: {};
	slots: {};
	sharedVariables: {};
	sharedPools: {};
	tag: '';
	package: 'dispatch'.

```
Implémentation de ifTrue: et ifFalse: dans la classe Falsee :
```
Falsee >> ifTrue: trueBlock [
	^ self.  "Ne fait rien car l'objet est déjà False"
]

Falsee >> ifFalse: falseBlock [
	^ falseBlock value.
]
```
Implémentation de not :
```
Falsee >> not [
	^ Truee 
]
```
Implémentation de or: :
```
Falsee >> | aBoolean [
	^ aBoolean.
]
```
# Explication de la Hiérarchie de Classes

Dans ce programme, j'ai créé une hiérarchie de classes représentant différents types de protéines pour la musculation. Voici l'explication de la hiérarchie ainsi que le code de création des classes.

## Hiérarchie des Classes

Voici la structure hiérarchique des classes que j'ai définies :

- **MassProtein** (classe de base)
  - **Mass** (hérite de `MassProtein`)
    - **SeriousMass** (hérite de `Mass`)
  - **Whey** (hérite de `MassProtein`)
    - **GoldStandard** (hérite de `Whey`)
    - **WheyPro** (hérite de `Whey`)

### Détails des Méthodes

- **MassProtein** : Classe de base n'a pas de méthode spécifique pour `objective` ou `type`.
- **Mass** :
  - Méthode `objective` renvoie `"gain mass"`.
  - Méthode `type` renvoie le résultat de `self objective`, donc elle utilise la méthode `objective` définie dans `Mass`.
- **SeriousMass** :
  - Méthode `objective` appelle `super objective`, ce qui signifie qu'elle utilisera la méthode `objective` définie dans `Mass` (soit `"gain mass"`).
- **Whey** :
  - Méthode `objective` appelle `super objective`, donc elle utilisera la méthode `objective` de `MassProtein`.
  - Méthode `type` appelle `self objective`, utilisant la méthode `objective` redéfinie dans ses sous-classes comme `GoldStandard` et `WheyPro`.
- **GoldStandard** et **WheyPro** :
  - Les deux redéfinissent `objective` pour renvoyer `"gain muscle"`.

### Résumé du Comportement

Dans cette hiérarchie, les méthodes `objective` et `type` se propagent à travers les classes en utilisant `self` et `super`, ce qui permet à chaque sous-classe d'hériter des comportements de ses classes mères tout en ayant la possibilité de redéfinir certaines méthodes pour adapter leur comportement.

---

# Homework
##creation d'un programme pour pratiquer dispatch

```
Object subclass: #MassProtein
	slots: {};
	package: 'dispatch'.

MassProtein subclass: #Mass
	slots: {};
	package: 'dispatch'.

Mass subclass: #SeriousMass
	slots: {};
	package: 'dispatch'.

MassProtein subclass: #Whey
	slots: {};
	package: 'dispatch'.

Whey subclass: #GoldStandard
	slots: {};
	package: 'dispatch'.

Whey subclass: #WheyPro
	slots: {};
	package: 'dispatch'.
Mass >> objective [
	^ 'gain mass'
]

Mass >> type [
	^ self objective
]
SeriousMass >> objective [
	^ super objective
]
Whey >> objective [
	^ super objective
]

Whey >> type [
	^ self objective
]
GoldStandard >> objective [
	^ 'gain muscle'
]
WheyPro >> objective [
	^ 'gain muscle'
] ```

```| instances results |
instances := { Mass new . SeriousMass new . Whey new . GoldStandard new . WheyPro new }.
results := instances collect: [ :each | each type ].
results.
```
	I found the expected result 



# MOULOUEL Tarik 

 - Pour ce rapport, j'ai vu la video youtube qui expliquait l'opérateur ``` not ``` et l'opérateur ``` or ``` dans pharo, j'ai aussi fait des recherches sur le dispatch, j'ai pu comprendre que le dispatch fait référence au processus par lequel le systeme détermine quelle méthode doit etre executee lorsqu'une methode est appelee sur un objet. Le dispatch en Pharo est principalement dynamique (late binding), ce qui signifie que la méthode à exécuter est déterminée au moment de l'exécution en fonction du type réel de l'objet. par contre dans d'autres langages il y a aussi le dispatch statique ou la méthode est determinee au moment de la compilation .  
 - j'ai aussi compris pourquoi self == super retourne true, en effet c'est parce que self fait référence à l'objet actuel qui reçoit le message, et super fait également reference au meme objet et donc comme self et super designent le même objet, la comparaison d identite == retourne true.

- Pour tester le mécanisme du dispatch en Pharo j'ai essayé de code suivant : 

 ```  
 Object << #Animal
		slots: {};
	package: 'Dispatch'  

	speak 
	^ 'noiseee' .

	Animal << #Cat
	slots: {};
	package: 'Dispatch' 

	Animal  << #Dog
	slots: {};
	package: 'Dispatch'   

 ``` 

- J'ai ensuite tésté dans le playground avec  :
	 ```
	 | animal1 animal2 |
		animal1 := Dog new.
		animal2 := Cat new.

		Transcript show: (animal1 speak); cr.  
		Transcript show: (animal2 speak); cr.  
	```  

  - Les exemples on marché comme prévu. 

# EL JISR Karim 

## Essence of Dispatch: Booleans
- Les messages en Pharo utilisent le late binding pour déterminer dynamiquement la méthode à exécuter.
- Les opérations comme not et | sont gérées par des méthodes spécifiques dans les classes True et False, exploitant l'héritage pour éviter les conditionnels explicites.

## Essence of Dispatch: Let the Receiver Decide
- L'envoi de messages permet de choisir dynamiquement le comportement en fonction de la classe de l'objet récepteur.

## Inheritance Basics
Héritage : Permet de réutiliser et personnaliser le code en étendant les classes sans duplication.
Aspects de l'Héritage :
- Statique : Les variables d'instance sont héritées au moment de la définition des classes.
- Dynamique: La recherche de méthodes se fait à l'exécution, en explorant la hiérarchie des classes.

## Inheritance and Lookup: Self
- Lookup de Méthode : Commence dans la classe de l'objet et continue dans les superclasses si nécessaire.
- self : Représente l'objet récepteur du message, permettant d'accéder à ses méthodes et variables.

## About Super
- super : Modifie le point de départ de la recherche de méthode en débutant dans la classe parente immédiate, contrairement à self qui fait référence à l'objet récepteur.
Différences avec self :
- self est dynamique
- super est statique

## Homework

Nous avons deux classes Vehicle et Car. La voiture hérite du véhicule, mais elle a son propre comportement pour la méthode action.

```
	Object subclass: #Vehicle
    	instanceVariableNames: ''.

	Vehicle >> action
    	^ 'Normal Action'.

	Object subclass: #Car
    	instanceVariableNames: ''.

	Car >> action
    	^ 'Vroom Vroom!'.

	| myVehicle myCar |
	myVehicle := Vehicle new.
	myCar := Car new.

	myVehicle action.  "Attendu : 'Normal Action'"
	myCar action.     "Attendu : 'Vroom Vroom!'"
``` 

Maintenant, je vais tester une situation où une méthode n'est définie que dans la superclasse, mais est appelée sur une instance de la sous-classe.

```
	Object subclass: #Bike
    	instanceVariableNames: ''.

	| myBike |
	myBike := Bike new.
	myBike action.  "Attendu : 'Normal Action'"
```

Je vais maintenant tester une redéfinition de méthode qui utilise super pour appeler la méthode de la superclasse.

```
	Car >> action
    	^ super action, ' and now the car is driving fast!'.

	myCar := Car new.
	myCar action.  "Attendu : 'Normal Action and now the car is driving fast!'"
```