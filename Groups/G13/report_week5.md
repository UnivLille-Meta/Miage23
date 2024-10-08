## Ikram Leila Hamzaoui
### Méthode Template : 
est une méthode définie dans une superclasse qui fournit la structure (ou la logique) générale d'un algorithme. Elle définit les étapes clés de l'algorithme, mais délègue certaines étapes spécifiques à des sous-classes.

### Méthode Hook : 
est une méthode définie dans une classe mère, souvent vide ou avec une implémentation par défaut (généralement on la définit comme une méthode abstraite), pour que les sous-classes peuvent la redéfinir et la personnaliser selon leur comportement. 

### Exemple:
Dans le chapitre 11 du livre "The Advanced Object-Oriented Design Mooc Companion", nous avions deux classes, **EAddition** et **EMultiplication**, qui utilisaient presque la même méthode `printOn`. Pour éviter la duplication de code, nous avons créé une classe mère appelée **EBinaryExpression**. Cette classe contient une méthode `printOn` qui est une **template method**, définissant la structure générale pour l'impression des expressions. Dans cette méthode, nous avons inclus une **hook method** abstraite, que les sous-classes spécialisent pour fournir l'opérateur spécifique (`+` pour **EAddition** et `*` pour **EMultiplication**). 

Dans le projet du Chess: j'ai trouvé les méthodes `initialize` et `printOn` qui sont des template methods.

