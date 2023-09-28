## Fonctionnement du groupe 
Chacun fais son propre rapport. Puis on fusionne nos rapport pour savoir ce qu'on va dire et qu'elles sont les grand axes qui s'en dégége. Notre objectif est de comprendre à quoi sert ce frmaework, comment s'en servir et comment il est structuré. 

## Premier contacte avec le projet
 - Lecture du readme
 - Recherche d'un UML -> il n'y a pas d'UML, ce qui aurait pus donner une vision globale du projet
 - Lecture du guide.md
 - Lecture du Tutorial.md

## Installation du projet
 - Ouverture du playground
 - Execution de la commande
 - Je n'ai pas réussi à installer les artefacts
Le readme est clair et bien détaillé, dommage que certaine commande ne marche pas.

## Comment nous procédons
 - Lecture et application du guide
 - Lecture et application du tutoriel
 - Lecture des packages :
       - Il y a un package de test *Artefact-Core-Test*
       - Un package pour les exemples *Artefact-Exemple*
       - Un package pour la compatibilité avec Pharo *Artefact-Pharo60-Compatibility*
       - *Artefact-Core* doit être le coeur du projet
       - Je ne comprend pas ce que font les 2 autres packages
- Je reprend les commandes du guide et je vais observer les classes utiliser en lisant la doc
- Je regarde les méthodes utiliser et je vais lire leur noms et la documentation
- Si je ne comprend pas ce que font les classes/méthodes je vais regarder dans le code, si je ne comprend toujours pas j'ignore
- Il est également possible d'aller lire le nom des commits, de verifier la qualité des tests grâce aux mutants, etc
- Mon point de départ est cette ligne qui permet de faire un pdf :
       ```PDFDocument new add: (PDFPage new add: (PDFTextElement new text: 'Hello'; from: 10mm@10mm)); exportTo: 'test.pdf' asFileReference writeStream```


## Ce que nous apprenons du projet
 - En Smalltalk
 - Est un framwork qui permet de générer des pdf
 - Les pdf sont en effet simple à créer pour l'utilisateur, et les exemples sont assez explicite
 - J'ai réussi à creer tous les pdf des exemples, ils sont dans le dossier pdf de l'image et il y a le tests à la racine de celle-ci
 - Tous les tests passent
 - Tout hérite de pdfComposite
 - On peut personnaliser beaucoup de chose comme la font, le style, les couleurs, l'ordre des pages, la polices
 - Il y a 6 packages
 - PDFDocument permet de mettre en page le pdf
 - La classe abstraite PDFElement permet d'ajouter des elements comme des dessins, des images, du textes
 - Il y a aussi des classes qui s'occupe de la mise en page, de la font, ... etc
 - On peut gérer le type de donnée voulus gràce à la classe PDFDataType
 - Le package ```ArtefactExample``` donne des exemples de pdf faisable
 - 

### Design Pattern
 - Visiteur, on observe un visiteur avec la classe abstraite PDFDataType

## Ce que nous apprennons sur pharo
 - Les classe avec un T vert représente un trait
 - Quand une classe est une exception il y a un petit éclair

## Tests
 - Il y a un coverage de 42,86% ce qui est bas, il faudrait un coverage plus élevé
 - Selon le coverage il y a 4 méthodes non testé
 - Les tests sont surement pas assez précis
 

## Questions
 - Il y a des sortes de sous packages vides
