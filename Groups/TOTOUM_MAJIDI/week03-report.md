# Semaine 03

## Patricia

### Object vs Data

Dans ce cours, j'ai appris que les objets en POO vont au-delà des simples structures de données. Ils combinent données et comportements.

L'exemple des points en Java et en Pharo illustre que, contrairement à Java où les points sont de simples structures de données avec des méthodes d'accès, en Pharo, les points sont des objets offrant des opérations mathématiques. En Java, le client doit effectuer des calculs manuels et dupliquer la logique, tandis qu'en Pharo, les objets `Point` simplifient la logique du client grâce à des méthodes prêtes à l'emploi. Cela souligne l'importance d'adopter des objets riches en fonctionnalités pour la réutilisation.

### About global variables

Certains exemples donnés dans le cours étaient un peu complexes à comprendre, ce qui a rendu la compréhension complète difficile. Néanmoins, le message principal, qui est d'éviter les variables globales a été compris.

### Global to parameter

 Les exemples montrent comment on peut éviter l'utilisation de variables globales en privilégiant plutôt des variables d'instance. Cela permet de personnaliser le comportement.

 ### Class Methods

J'ai revu l'algorithme de look-up et compris qu'il fonctionne à la fois pour les méthodes d'instance et les méthodes de classe. 

En Pharo, tout est un objet, y compris les classes elles-mêmes. Ce qui signifie qu'elles peuvent recevoir des messages comme n'importe quel autre objet et définir des méthodes qui leur sont propres, appelées "class methods". Cela permet à une classe d'avoir des fonctionnalités spécifiques liées à la classe elle-même, indépendamment des instances individuelles de cette classe.

*Important : Utiliser `yourself` dans une méthode de classe permet de retourner l'instance nouvellement créée par la méthode plutôt que la classe elle-même. C'est très utile quand on fait une cascade de messages.*

### Reverse engireering

J'ai continué à travailler sur l'exercice et à préparer la présentation. J'ai également commencé à élaborer les diapositives.

Je suis actuellement en train de parcourir le rapport  [Reverse engineering on LRUCache](https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/reverse-engineering-LRU.pdf) pour étudier un exemple concret d'analyse et pour mieux comprendre la manière dont la présentation devrait être structurée.

### Mutation Testing

J'ai approfondi mes connaissances en mutation testing, ce sujet avait été survolé l'année dernière en cours de COO. 

J'ai commencé l'exercice sur LRUCache. Je n'ai malheureusement pas pu terminer l'exercice pendant la séance, mais j'ai l'intention de le compléter pour la semaine 04 afin de pratiquer davantage le mutation testing.

J'ai élargi mes connaissances en installant le plugin Pitest dans Eclipse pour explorer comment le mutation testing peut être appliqué sur un de mes projets Java de licence 3.

*Notes pour moi-même :*
- À mesure que le nombre de mutants tués augmente, la qualité des tests s'améliore. En cas de mutants survivants, cela indique des lacunes dans les tests.
- Un test de qualité doit couvrir les différentes branches du code, les cas limites et les scénarios critiques.
- Il vaut mieux avoir une couverture de code plus faible avec des tests de haute qualité plutôt que d'avoir une couverture de code élevée avec des tests inefficaces. Donc pour l'analyse de AVL et Artefact, ne pas se baser uniquement sur le taux de couverture pour évaluer que le code est exempt de bugs.


---
### Ezzahra

Au cours de cette formation, j'ai acquis une nouvelle perspective sur la nature des objets en programmation orientée objet (POO). J'ai compris que les objets combinent à la fois des données et des comportements.

Cela est bien illustré par l'exemple des points en Java et en Pharo. Contrairement à Java, où les points sont généralement considérés comme de simples structures de données avec des méthodes d'accès, en Pharo, les points sont pleinement des objets offrant des opérations mathématiques intégrées. Cette distinction met en lumière l'importance d'utiliser des objets riches en fonctionnalités pour simplifier la logique du client, réduisant ainsi la nécessité de calculs manuels et de duplication de logique.

À propos des variables globales
Bien que certains des exemples abordés au cours puissent sembler complexes à première vue, le message central de l'importance d'éviter les variables globales a été clairement compris. Cette démarche favorise une meilleure gestion et compréhension du code.

Passage des variables globales aux paramètres
Les exemples présentés dans le cours démontrent comment éviter l'utilisation de variables globales en privilégiant plutôt l'utilisation de variables d'instance. Ce choix offre la possibilité de personnaliser le comportement des objets, favorisant ainsi une conception plus modulaire et plus flexible.

Méthodes de classe
Une révision de l'algorithme de recherche m'a permis de comprendre qu'il s'applique tant aux méthodes d'instance qu'aux méthodes de classe. En Pharo, où tout est un objet, y compris les classes elles-mêmes, ces dernières peuvent recevoir des messages comme n'importe quel autre objet. Elles peuvent aussi définir des méthodes spécifiques appelées "class methods," ce qui leur permet de posséder des fonctionnalités propres, indépendamment des instances individuelles de la classe.

Reverse Engineering
Grace au cours de Pharo en reverse engineering, j'ai identifié un bug au sein de la plateforme. Fort de cette découverte, j'ai pris l'initiative d'ouvrir une pull request pour signaler le problème. Grâce à cette démarche, l'équipe de développement a pu prendre connaissance de la situation et a rapidement entrepris les mesures nécessaires pour corriger ce bug. Cela a été une expérience enrichissante, démontrant l'impact positif que l'engagement dans la communauté open source peut avoir sur l'amélioration des logiciels.

---
### Ezzahra

Au cours de cette formation, j'ai acquis une nouvelle perspective sur la nature des objets en programmation orientée objet (POO). J'ai compris que les objets combinent à la fois des données et des comportements.

Cela est bien illustré par l'exemple des points en Java et en Pharo. Contrairement à Java, où les points sont généralement considérés comme de simples structures de données avec des méthodes d'accès, en Pharo, les points sont pleinement des objets offrant des opérations mathématiques intégrées. Cette distinction met en lumière l'importance d'utiliser des objets riches en fonctionnalités pour simplifier la logique du client, réduisant ainsi la nécessité de calculs manuels et de duplication de logique.

## À propos des variables globales
Bien que certains des exemples abordés au cours puissent sembler complexes à première vue, le message central de l'importance d'éviter les variables globales a été clairement compris. Cette démarche favorise une meilleure gestion et compréhension du code.

Passage des variables globales aux paramètres
Les exemples présentés dans le cours démontrent comment éviter l'utilisation de variables globales en privilégiant plutôt l'utilisation de variables d'instance. Ce choix offre la possibilité de personnaliser le comportement des objets, favorisant ainsi une conception plus modulaire et plus flexible.

### Méthodes de classe
Une révision de l'algorithme de recherche m'a permis de comprendre qu'il s'applique tant aux méthodes d'instance qu'aux méthodes de classe. En Pharo, où tout est un objet, y compris les classes elles-mêmes, ces dernières peuvent recevoir des messages comme n'importe quel autre objet. Elles peuvent aussi définir des méthodes spécifiques appelées "class methods," ce qui leur permet de posséder des fonctionnalités propres, indépendamment des instances individuelles de la classe.
