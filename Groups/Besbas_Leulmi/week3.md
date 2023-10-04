# Rapport 3 :

## REVERSE ENGINEERING :

Dans un premier temps nous avons tout deux revu le cours afin de nous familiariser avec.

Lors de cette semaine nous avons étudié le Reverse Engineering (RE) qui est, comme dit dans le cours, une competence clé pour les developpeurs pros.

En effet, vu qu'il est beaucoup plus probable que l'on travaille sur du code déjà implementé lors de notre carriere, le cours fournit des conseils et des méthodes pour aborder le reverse engineering, qui consiste à analyser un système existant pour en comprendre la conception et le fonctionnement.

Voici donc les quelques points que nous avons retenu :

### Perspectives différentes : 
Le reverse engineering peut être abordé sous différentes perspectives, telles que celle de l'utilisateur, de l'implémenteur et de l'extendeur.

### Niveau de détail : 
Au début, il est recommandé de ne pas se perdre dans les détails, mais plutôt de se concentrer sur les interactions entre les composants, les éléments clés et les grandes responsabilités.

### Analyse : 
Il est utile de regarder les dépendances entre les packages, les classes importantes, les références de classes, les appels de méthodes, et les implémentations de méthodes.

### Tests :
L'analyse des tests peut aider à comprendre l'utilisation et le comportement attendu du système. Cependant, il faut être conscient que certains tests peuvent se concentrer sur des parties simples du code.

### Évaluation de la conception : 
L'évaluation de la conception peut inclure l'identification de conditionnels, de méthodes longues, de code dupliqué et d'appels de méthodes spécifiques.

### Modèles de reverse engineering : 
Trois modèles de reverse engineering sont présentés : la spéculation sur la conception, la refactorisation pour comprendre, et l'analyse pas à pas de l'exécution.

## LRUCACHE
Dans un second temps, nous avons revu le cours "Reverse Engineering Pharo’s LRUCache" afin d'avoir les idées claires et pouvoir appliquer tout ça pour la presentation.

Grâce à cela nous avons pu comprendre ce qu'est un LRUCache, comment il fonctionne et examiner brièvement son implémentation.

En effet, Un LRUCache est une forme de cache qui suit la politique "Least Recently Used", c'est-à-dire qu'il supprime les éléments moins récemment utilisés lorsque sa capacité est atteinte. 

Il fonctionne comme un dictionnaire avec une politique LRU, stockant des paires (clé, valeur) et utilisant méthode clé est "at:ifAbsentPut:", il a une capacité maximale et évacue des éléments pour la maintenir.

## Exercices :

L'objectif est de comprendre la classe LRUCache dans Pharo 11, de comprendre ce qu'est un LRUCache, comment il est utilisé, et d'avoir une idée de son implémentation.

### Mohamed :



### Mélik :
