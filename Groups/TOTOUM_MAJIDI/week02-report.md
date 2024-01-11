# Semaine 02

---
### Patricia
- En préparation de la présentation sur l'analyse d'Artefact et AVL, j'ai revu le cours sur la rétro-ingénierie, ce qui me permet d'avoir des points d'analyse sur lesquels me concentrer pour les deux projets. J'ai utilisé des points d'arrêt pour avancer dans le code. Ce cours sera particulièrement utile pour mon alternance, où je devrai migrer plusieurs applications vers la version la plus récente de Java. Naviguer dans de gros projets que je ne connais pas me fait moins appréhender. J'ai desormais les outils nécessaires pour aborder des projets logiciels complexes et prendre les bonnes décisions en matière de conception. La pratique des TP de C3P sera d'une grande utilité.

- Laisser le récepteur du message décider signifie que lorsqu'un message est envoyé à un objet, c'est cet objet lui-même qui détermine comment il répondra au message en fonction de sa propre classe et de ses méthodes. On a utilisé cela pour l'implémentation des méthodes booléennes, chaque sous-classe de Boolean implémentait ainsi ses propres méthodes. Cela a permis d'exploiter le polymorphisme.

- L'une des principales leçons de cette semaine est l'importance de remplacer les structures conditionnelles statiques par des messages envoyés aux objets en exploitant les hiérarchies de classes. Cela permet à chaque objet de prendre des décisions concernant son comportement en fonction de sa classe. En d'autres termes, l'envoi de messages est un choix dynamique, et les classes sont des représentations de ces choix potentiels. Ainsi, lorsque nous adressons un message à un objet, la classe de cet objet détermine la méthode appropriée à exécuter.

- J'ai davantage appris sur l'héritage. Chaque classe a une seule superclasse, et en pharo toutes les classes héritent de Object. L'héritage des variables est statique et se fait lors de la définition de la classe, tandis que l'héritage du comportement est dynamique et se fait au moment de l'exécution.
  
- Nous avons pratiqué les concepts de "self" et "super" à travers des exercices de lookup. Ces exercices m'ont permis de comprendre que "self" représente le récepteur du message et que le processus du lookup commence dans la classe du récepteur en remontant la hiérarchie des classes si nécessaire. En ce qui concerne "super," j'ai appris que "super" représente également le récepteur du message mais il modifie le processus de recherche en commençant par la classe au-dessus de celle contenant l'expression "super," ce qui donne une recherche statique.

- J'ai appris qu'il faut éviter la duplication car elle copie les bugs. Nous devons aussi éviter les nombres magiques dans le code et les longs messages en privilegiant de nombreux petits messages.

### Ezzahra
- En analysant le code pour la mutation testing, en utilisant le reverse engineering, j'ai trouvé un Bug au niveau de Pharo (en consultant les statistiques du mutation testing) que j'ai repporté à monsieur Ducasse, suite auquel il m'a demandé d'ouvrir un ISSUE sur Git, l'équipe de Pharo était très responsive et ils m'ont répondu dans quelques minutes. Il m'ont donné un code à integrer au niveau de pharo puisque c'est Open source. et ça a résolu le problème.
   Voici le lien vers l'ISSUE: https://github.com/pharo-project/pharo/issues/14719

- J'ai également abordé la partie reverse engineering en préparant pour la présentation de projet, et j'ai réussi à modifier et implémenter un code pour l'extraction de pdf de l'horloge pour faire une démonstration au niveau de la présentation.

- J'essaye de plus en plus d'avoir une idée sur Pharo puisqu'il m'interesse vivement comme langage, c'est intuitive, bien structuré et Open source ce qui nous donne plus de liberté! Au début je l'ai comparé à JAVA, maintenant je ne le fait plus, puisque je trouve que c'est toute une différente "School of thought"

- Je me suis également servie des notions de l'arbre binaire pour travailler sur AVL.
  
- On a également vu comment remplacer les "if" par le POO pour un code plus optimal et plus "CLEAN".
  
- Nous avons également vu la différence entre super et self en pratique, et pour être honnête, ce cours m'a clarifié la fonction de super, à quoi ça sert et comment l'utiliser.
