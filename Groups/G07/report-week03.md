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




