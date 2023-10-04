# Design pattern

## Visitor

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/0e8e25f4-c37e-4daa-a8c4-6121d492ccb8)

Le Visiteur se fait dans le PDFDataType. Il permet de pouvoir gérer tout les types d'élément dans un pdf, sans se soucier de la nature de celui-ci, et permet une meilleure résistance face aux mise à jour du format PDF externe à Artéfact.
Les méthodes de visiting sont bien définie dans une catégorie de méthode résrvé à ce pattern.
## Composite

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/4249f6cc-f69a-4d9d-8141-bc7bf76dfa8a)

Composite est utilisé dans le PDFComposite (comme son nom l'indique => facile à trouver !)

Composite permet donc dee jouer avec les éléments en leurs attribvuant des fonctionnalités annexs et rajouter des comportemets. (Ajouter un text flottant à une flèche ou autre par exemple)


# Testing



## Coverage

![img1](https://github.com/Gabriella3620/Contrast/assets/129399867/339378be-a182-433e-8abb-401a29386835)

![img2](https://github.com/Gabriella3620/Contrast/assets/129399867/18ea335d-615f-45d4-80a0-41ad7fd2a988)


80% coverage total

## Mutation Testing

![img3](https://github.com/Gabriella3620/Contrast/assets/129399867/ed01103a-8680-4f92-891a-5342cfbb06b2)

16% mutation, très bas, beaucoup de type de mutation différente ppasse (boolean changé, opérateur switché, etc etc )

## Improvement

Taux de mutation extrêmemt bas, on pourrait checker beaucoup de classe pour renforcer la robustesse du code.


# Axe d'analyse d'artefact


# What I learn from a user perspective

## Is there good starting documentation?  

Le framework dispose de 3 types de document : un readme, une guide et un tutoriel

Ce que j'ai compris dans les 3 documents:
** Le readme nous permet d’avoir:
- une description de ce que fait le projet avec en plus une vidéo qui explique le projet
- comment installer Artefact : on a un script qu’il faut juste lancer dans le playground
- les versions de pharo supportés, le code coverage, un lien qui mène vers la documentation pharo etc 
- des liens vers un guide et un tutoriel pour une documentation plus poussée sur Artefact
- 
** Le Guide nous permet : 
- De découvrir  par des exemples le framework et 'exécuter chaque méthode de classe PDFDemos 
Il nous donne aussi un schemas global avec PDFDocument  -> PDFPages -> PDFElement ( texte, ligne,etc) , les elements peuvent etre complexe comme le pdfcompositeElement 
- explique  en details les differents elements les polices,pages , element,etc 
** Le Tutoriel nous permet : 
il s’agit d’un petit exercice qui te permet de mettre de pratiquer et de créer un pdf avec artefact 


## How do we use the project/library?

Pour utiliser Artefact dans un projet, on doit ajouter Artefact à notre image Pharo. on peut  le faire en utilisant le gestionnaire de paquets de Pharo (Montecello). 

## What are the key classes to look at : 

 - les classes principales sont PDFDocument, PDFPage, PDFElement,  PDFCompositeElement
 PDFDocument  -> PDFPages -> PDFElement ( texte, ligne,etc) , les elements peuvent etre complexe comme le PDFCompositeElement

La brique de base dans Artefact est le PDFDocument qui représente l'ensemble du document. Dans ce PDFDocument, on ajoute des PDFPages. Une page est une surface de dessin où on peut placer n'importe quel PDFElement. Les éléments sont les objets graphiques tels que les textes, les lignes, les flèches... Les éléments peuvent être plus complexes comme par exemple dans la section PDFCompositeElement.

## How do we use the project/library :  
-Ouverture du playground
-Exécution de la commande

# From an implementor/contributor perspective

## How is it implemented? 

Du point de vue d'un contributeur, le projet Artefact est implémenté en utilisant le langage de programmation Smalltalk et suit les principes de la programmation orientée objet. Il tire parti de la puissance de l'environnement Pharo et de ses outils pour créer un framework flexible et extensible pour la génération de documents PDF.
Design patterns observés dans le projet Artefact :
1. Pattern Composite :
 Artefact utilise le pattern Composite pour représenter les PDFElements. Les PDFElements peuvent être des objets simples tels que du texte ou des images, ou ils peuvent être des objets composites contenant d'autres PDFElements. Cela permet d'avoir une structure hiérarchique.

Les classes associées à ce pattern sont les suivantes :
- `PDFElement` : La classe de base pour tous les PDFElements.
- `PDFCompositeElement` : La classe de base pour les PDFElements composites qui contiennent d'autres PDFElements.
- `PDFText` : Un PDFElement simple représentant du texte.
- `PDFImage` : Un PDFElement simple représentant une image.

  Dans l'ensemble, le design d'Artefact est flexible et extensible, ce qui permet une personnalisation et une adaptation faciles à différents cas d'utilisation.

  

  


