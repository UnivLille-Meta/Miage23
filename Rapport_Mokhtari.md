# Rapport Week 1

## Module préparation

### ce que j'ai fait

J'ai réalisé l'exercice Counter. J'ai vu comment créer un package avec des classes et comment réaliser une classe test.

J'ai réalise l'exercice Dice dans lequel j'ai pu comprendre la différence entre methodes de classe et méthodes d'intance. Par exemple, withFaces: permet de créer un dé avec un nombre de face donné en parametre. Une méthode d'instance est appelée sur une instance de la classe, alors qu'une méthode de classe qui est appelée sur la classe elle-même.

### ce que je n'ai pas fait

J'ai eu un problème de git, pharo ne reconnaissait pas mon dépot git donc j'ai perdu pas mal de temps et je n'ai pas pu réaliser l'exercice FlagTutorial.

Pour régler le problème, j'ai supprimer le fichier Miage-C3P du dossier Iceberg, j'ai recréé un repository et j'ai utilisé l'outil repair repository et ça a fonctionné.

## Lect01-OOP

Fait en binome avec Mathéo

### Ce que j'ai fait

J'ai vu les videos : 
"Essence du Dispatch : un exercice (W2S11-FR)"
"Essence de sélection de méthodes 1/2 (W3S1-FR)"
"Essence de sélection de méthodes 2/2 (W3S1-FR)

J'ai refait l'exemple de True et False pour le dispatch

```
    True >>not
    ^ false

    True >> | aBoolean
    ^ self

    False >>not
    ^ true

    False >> | aBoolean
    ^ aBoolean
```
#### Did the examples work as expected? 

Oui, les exemples ont fonctionné comme je m'y attendais. Je m'attendais à ce résultat car le dispatch permet de choisir quelle méthode va être exécutée selon la classe de l'objet.

#### What was different between what you expected and what you saw in reality?

Il n'y avait pas de différence entre ce que j'attendais et le résultat obtenu.

#### How can you correct your assumptions and how did you find this information?

Je n'ai pas eu à corriger mes suppositions.

## Difficultés

Ce que j'ai trouvé difficile c'est la charge de travail car on devait à la fois faire le travail de préparation et le OOP ce qui est assez conséquent.