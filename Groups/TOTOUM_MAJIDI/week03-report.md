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