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