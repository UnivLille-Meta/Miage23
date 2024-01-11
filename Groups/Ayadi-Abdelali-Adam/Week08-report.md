# Semaine 8: Design pattern Visitor

## Abdellatif

### Design pattern composite

- Implémentation de la recherche d'un fichier dans une arborescence.
- Il est important de ne pas dupliquer du code, car si jamais on devait changer quelque chose, on n'aurait qu'à changer à un seul endroit.
  - Faire cela ne signifie pas forcément que l'on aura moins de code.
  - Mais plutôt, cela ajoute plus de structure et de lisibilité.
- On doit éviter de renvoyer nil et aussi l'utilisation des conditions, sauf pour des choses basiques, comme des chaînes de caractères.
- Le modèle proposé est un DP composite.

### Design pattern Visitor

- Pour ajouter des méthodes ou des fonctionnalités, il faut toucher au code source de la structure, ce qui risque de causer des erreurs inattendues, ou peut-être coûteuses.
- L’utilisation du patron de conception "visitor" et du double dispatch peut remédier à ce problème.
- On crée des classes qui vont elles-mêmes implémenter les opérations.
- Ce patron de conception repose sur le double dispatch.
- Ce qui nous relie aux classes, ce sont les noms des méthodes. Donc, si jamais on met des noms génériques qui peuvent être utilisés partout (`visit<classe>` et accept),
- Les opérations sont donc externalisées, on ne joue pas avec le polymorphisme mais plutôt avec du double dispatch.
- Il suffit donc d’implémenter des fonctions `accept` (ou `acceptVisitor`). Il est important que ce soit le même nom, et après pour chaque fonctionnalité avoir une classe qui implémente cette dernière avec des classes qui s’appellent `visit<class>`.

## Edem

### le Modèle Composite

j'ai bien avancé avec la partie Composite en créant les classes FSEntry, FSFile, et FSDirectory pour construire un système de fichiers.
Cela m'a permis de gérer des élément simples(fichier à et des éléments composites(dossier) d'éléments de manière similaire).

### Compréhension acquise

Au cours de cet exercice, j'ai compris comment organiser des structures complexes en utilisant le modèle Composite.
L'idée d'une hiérarchie d'objets pour représenter des relation entre eux devient plus claire, surtout en utilisant la récursivité pour éviter la redondance de code.

### Difficultés

Le modèle Visitor a posé des défis, surtout quand il s'agit d'ajouter de nouvelles fonctionnalités comme le calcul de la taille des éléments.
Comprendre comment les méthodes interagissent entre les visiteur et les éléments visités n'a pas été simple pour moi dans ce contexte.

## Skander

### Design pattern Composite

Dans cette séance, j'ai appris l'implémentation du Design Pattern Composite pour optimiser la recherche de fichiers au sein d'une arborescence.j'ai implementer la recherche de fichier en implementant les classes FSEntry, FSFile et FSDir. L'accent était mis sur l'évitement de la duplication de code, favorisant ainsi la maintenance en un seul endroit et ajoutant une structure claire et une lisibilité accrue au projet. L'objectif était de minimiser l'utilisation de retours nuls et de conditions complexes, sauf pour des aspects fondamentaux tels que les chaînes de caractères. Le modèle Composite a été choisi pour sa capacité à offrir une solution structurée à ces défis spécifiques.


### Design pattern Visitor

Lors de cette séance, j'ai appris comment implementer le design pattern visitor. ce design pattern permet de placer des nouveaux comportements dans une classe séparée que l’on appelle visiteur comportant des méthodes visit pour chaque elements, plutôt que de les intégrer dans des classes existantes.

Cette approche modulaire offre plusieurs avantages. Elle permet d'ajouter de nouvelles fonctionnalités sans altérer la structure des classes existantes, favorisant ainsi la clarté du code et la réutilisation des composants. De plus, le design pattern Visitor facilite la gestion des différents comportements, les regroupant de manière organisée au sein des classes visiteurs dédiées.
