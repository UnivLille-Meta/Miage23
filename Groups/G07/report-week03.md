# Meryem EL KOURAICHI

## Quelle est la différence entre une structure de donnéeset un objet ?

Structure de données vs API

    Structure de données :
        - Une structure de données est une façon d'organiser et de stocker des données pour qu'elles puissent être utilisées efficacement.
        - Elles sont généralement axées sur la représentation des données elles-mêmes (par exemple, des coordonnées, des listes, des arbres).
        - Leur interface est souvent limitée à des opérations basiques (insertion, suppression, récupération) et ne fournit que peu de comportements ou de logique au-delà de cela.

    API :
        - Une API est une interface qui expose des fonctionnalités d'un système ou d'un objet. Elle peut être liée à une structure de données, mais son objectif est plus large.
        - Une bonne API encapsule non seulement les données, mais aussi la logique et le comportement associés. Cela permet aux utilisateurs de réutiliser les fonctionnalités sans avoir à les recréer.
        - Une API riche va au-delà de l'accès aux données pour offrir des opérations complexes, des transformations, des validations, etc.

## Avantages d'une API riche

 -  Réutilisabilité : En encapsulant des comportements complexes, une API riche permet de réutiliser des fonctionnalités sans avoir à les redévelopper à chaque fois.

   -  Simplicité pour l'utilisateur : Les utilisateurs de l'API n'ont pas besoin de gérer des détails techniques ou des calculs complexes. Ils peuvent se concentrer sur leurs objectifs sans recréer des fonctionnalités.

## Méthodes de classe et super 

Cet exemple montre comment utiliser super dans des méthodes de classe, afin d'appeler la méthode d'une classe parente, puis d'ajouter du comportement spécifique dans la sous-classe.
Définition de la classe Vehicle et la sous-classe Voiture : 

```pharo
Vehicle class >> category 
        ^ ' Generic vehicle'
```
```pharo
Car class >> category 
        ^ super category , ' - Car'
```

Maintenant, on appelle la méthode category sur la classe Car :


Cela renvoie : 'Generic vehicle - Car'

Vehicle définit une méthode de classe category qui renvoie la chaîne 'Generic vehicle'.

`Car` , qui est une sous-classe de Vehicle, redéfinit la méthode de classe category en appelant super category pour obtenir la valeur de la méthode parente, puis ajoute ' - Car' à la chaîne retournée.
Lorsque on appelle Car category, le message est d'abord envoyé à la méthode de `Car`, qui utilise super pour appeler la méthode de Vehicle, puis concatène ' - Car' au résultat.
-----------------------------

# ZIANE CHAOUCHE LOUIZA

## HomeWork : 

### Watch at home:

- Un objet encapsule des données et du comportement(les méthodes), tandis qu'une structure de données ne contient que des informations.
- Un objet est plus simple qu'une structure de données, il doit encapsuler sa logique pour qu'il soit réutilisable.
- Les varibles globales créent des dépendances indésirables, compliquent les tests.
- Eviter les variables globales et le design Singleton.
- Remplacer les variables globales par des variables d'instance.

### Project milestone 1:

Cette Semaine j'ai commencé à decouvrir le projet Chess.
- J'ai choisi de travailler le kata " Fix pawn moves! ".

- En abordant ce Kata, je vais non seulement identifier les erreurs existantes dans l'implémentation des mouvements des pions, mais aussi créer des tests pour m'assurer que les corrections fonctionnent comme prévu.

- J'ai commencé par explorer la classe MyPawn, qui se trouve dans le package Myg_chess_core. Cette classe m'a paru intéressante pour mon objectif, car elle représente le pion, l'une des pièces les plus simples mais aussi les plus stratégiques du jeu. Bien qu'elle n'ait pas d'attributs définis, elle possède des méthodes intéressantes.
Par exemple, la méthode renderPieceOn: aSquare permet de dessiner le pion sur une case spécifique. De plus, la méthode targetSquaresLegal: aBoolean détermine les cases cibles légales pour le pion, selon qu'il est blanc ou noir, en vérifiant les conditions de déplacement.

- J'ai poursuivi mon étude avec la superclasse MyPiece. Les méthodes square et board me permettent d'accéder facilement à la case et au plateau à partir de n'importe quelle pièce.

- Dans la classe MyChessSquare. La methode hasPiece vérifie si une case contient une pièce, et contents, qui permet d'identifier la pièce présente sur la case. 

- J'ai également jeté un coup d'œil à la classe MyFENGame dans le package Myg-Chess-Importers. Bien qu'elle n'ait pas de description explicite, cette classe semble jouer un rôle essentiel dans la gestion de l'état d'une partie d'échecs.

- J'ai exploré la classe MyFENTest dans le package test, qui contient des tests importants pour le parsing des pièces d'échecs. Deux tests notables sont testParseWhitePawn, qui vérifie que le parser interprète correctement un pion blanc ('P') en retournant 'White pawn', et testParseBlackPawn, qui s'assure qu'un pion noir ('p') est interprété comme 'Black pawn'. Ces tests garantissent que le parser fonctionne comme prévu et qu'il peut distinguer correctement les pions en fonction de leur couleur.

Pour l'instant, je vais m'intéresser aux classes suivantes :
- MyPawn
- MyPiece
- MyChessSquare
- MyChessBoard
- MyFENGam
------------------------

# Wassim ABOU DAHER

## Differences betwen Data structure and Object:

### Data Structure:  
A data structure organizes and stores data , focusing  on the arrangement and access to that data. Examples: arrays, lists, ...
These structures do not inherently provide behavior; they  offer the basic operations like adding, removing data .  
### Object:
An object is a self-contained unit that combines data and behavior. Last year we got that an object is an instance of a class that holds data (attributes) and methods (functions) that operate on that data.
Objects allow for encapsulation, meaning they can expose certain functionalities while hiding their internal status.  
### Key Difference:
A data structure is passive and  concerned with data storage.
An object  combines data with methods that define its behavior, so it give a more interactive way to manage and manipulate data.
Example:

| phoneNumbers |
phoneNumbers := #('123-456-7890' '987-654-3210' '555-0123').  
phoneNumbers at: 1.  "Access the first phone number"  
phoneNumbers is a data structure.

Object subclass: Phone [
    | number owner |

    Phone class >> newPhone: aNumber owner: anOwner [
        ^ self new initializeNumber: aNumber owner: anOwner
    ]

    initializeNumber: aNumber owner: anOwner [
        number := aNumber.
        owner := anOwner.
    ]

    call [
        ^ 'Calling ', number, '...'
    ]

    getDetails [
        ^ 'Owner: ', owner, ', Phone Number: ', number.
    ]
].

| myPhone |
myPhone := Phone newPhone: '123-456-7890' owner: 'Alice'.
myPhone call.         "Returns 'Calling 123-456-7890...'"
myPhone getDetails.   "Returns 'Owner: Alice, Phone Number: 123-456-7890'"
In this example, the Phone class is an object that encapsulates data (phone number and owner) and behavior (methods to call and retrieve details).

Class Methods and super
Here's an example using a Phone class and a Smartphone subclass to illustrate how super is utilized in class methods:

Phone class >> description
    ^ 'Basic phone features'

Smartphone class >> description
    ^ super description, ' - Includes apps, internet connectivity, and touch screen'
The Phone class has a class method description that returns 'Basic phone features'.
The Smartphone class overrides this method, calling super description to get the base description.
When you call:

Phone description.      "Returns 'Basic phone features'"
Smartphone description. "Returns 'Basic phone features - Includes apps, internet connectivity, and touch screen'"
This demonstrates how super can be used to extend the functionality of class methods, allowing subclasses to build upon the logic defined in their parent classes.

### Choice of Kata
For my project, I chose the "Remove nil checks" kata. This kata focuses on refactoring existing code to eliminate unnecessary nil checks, so it improves code readability and +tive things. 
I started to do some tests to analyze the current implementation, and explore some classes to identify where nil checks are used, and refactor the code. 


