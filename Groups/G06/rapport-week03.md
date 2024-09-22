# Mohamed Yassine Aloui Section
En Pharo, tout élément est un objet, même les classes, qui reçoivent également des messages. Une classe est une instance d'une autre classe (objet) appelée metaclass. La recherche de méthode (method lookup) utilise le même algorithme de dispatch. Par exemple :

```inst:=super new.```

Ici, super n'est pas la super classe, mais le récepteur du message. On va donc chercher la super classe de l'instance. Un exemple :

``` ^super class == self class ```

Cela retourne true. Le même concept de dispatch, expliqué dans le rapport, est appliqué dans les méthodes de classe.

Les objets ne stockent pas seulement des données, mais ils ont des méthodes, un comportement spécifique à chaque objet. C'est pourquoi on encapsule la logique dans la classe pour que le client puisse la réutiliser, simplifiant ainsi le code client, favorisant la maintenance, et évitant la répétition de code. Le client va utiliser la méthode sans connaître l'implémentation et ses détails.

Les structures de données stockent uniquement des données et n'ont pas de comportement. Les variables globales ont la même valeur pour toutes les classes, ce qui pose problème si on en change une dans un objet X, car tous les autres objets se mettraient à jour également. À la place, on utilise des paramètres pour faciliter la testabilité et favoriser la modularité du code.

Modularité : Diviser un système en plusieurs composants indépendants, chaque objet étant responsable de ses propres tâches. Dans ce cas, chaque application pourrait avoir ses propres ensembles d’icônes ou d’outils sans interférer avec les autres.

Messages spécialisés : Chaque objet peut répondre à des messages (méthodes) de manière différente selon son rôle ou son contexte. Il est important d’éviter les références globales (comme les icônes de Smalltalk) et de favoriser la modularité pour que chaque application puisse avoir ses propres icônes, outils ou environnements, tout en permettant à chaque objet de spécialiser les messages qu'il reçoit et traite.


