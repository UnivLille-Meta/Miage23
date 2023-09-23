# Semaine 02

---
### Patricia
- En préparation de l'exercice Artefact et AVL, j'ai revu le cours sur la rétro-ingénierie, ce qui me permet d'avoir des points d'analyse efficace sur les projets et de mieux les comprendre. J'ai utilisé des points d'arrêt pour avancer dans le code. Ce cours sera particulièrement utile pour mon alternance, où je devrai migrer plusieurs applications vers la version la plus récente de Java. Naviguer dans de gros projets que je ne connais pas me fait moins appréhender. J'ai desormais les outils nécessaires pour aborder des projets logiciels complexes et prendre les bonnes décisions en matière de conception.

- Laisser le récepteur du message décider signifie que lorsqu'un message est envoyé à un objet, c'est cet objet lui-même qui détermine comment il répondra au message en fonction de sa propre classe et de ses méthodes. On a utilisé cela pour l'implémentation des méthodes booléennes, chaque sous-classe de Boolean implémentait ainsi ses propres méthodes. Cela a permis d'exploiter le polymorphisme.

- L'une des principales leçons de cette semaine est l'importance de remplacer les structures conditionnelles statiques par des messages envoyés aux objets en exploitant les hiérarchies de classes. Cela permet à chaque objet de prendre des décisions concernant son comportement en fonction de sa classe respective. En d'autres termes, l'envoi de messages devient un mécanisme de choix dynamique, et les classes sont des représentations de ces choix potentiels. Ainsi, lorsque nous adressons un message à un objet, la classe de cet objet détermine la méthode appropriée à exécuter, ce qui renforce la modularité et la flexibilité de notre code.

- J'ai davantage appris sur l'héritage. Chaque classe a une seule superclasse, et en pharo toutes les classes héritent de Object. L'héritage des variables est statique et se fait lors de la définition de la classe, tandis que l'héritage du comportement est dynamique et se fait au moment de l'exécution.
  
- Nous avons pratiqué les concepts de "self" et "super" à travers des exercices de lookup. Ces exercices m'ont permis de comprendre que "self" représente le récepteur du message et que le processus du lookup commence dans la classe du récepteur en remontant la hiérarchie des classes si nécessaire. En ce qui concerne "super," j'ai appris que "super" représente également le récepteur du message mais il modifie le processus de recherche en commençant par la classe au-dessus de celle contenant l'expression "super," ce qui donne une recherche statique.

- J'ai appris qu'il faut éviter la duplication car elle copie les bugs. Nous devons aussi éviter les longs messages et privilegier les petits messages car ils donnent la liberté aux sous-classes.
