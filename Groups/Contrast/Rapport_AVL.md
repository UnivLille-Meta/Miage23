
## Axes of Analysis

- What conclusions did you get from the data structure?
- *How* did you learn?

For each project perform *at least* the following analyses.

Tips:
- You can check the code from the Class browser,
- Execute examples from the playground,
- and inspect the results using the inspector.
- To execute the tests use DrTests (see menus)
- And check the options in the browser/playground (senders, implementors) what do they do and why are they useful?

### From a user perspective
- Is there good starting documentation? Look for installation instructions, starting points, examples.
- How do we use the project/library?
- What does it do? Why would you use it?
- What are the key classes to look at?
  

### From an implementor/contributor perspective
- how is it implemented? Do you recognize some known patterns?
- what are the invariants? For AVL you will see plenty since it is a data structure. For Artefact, can you zoom into a feature and get some insights?
- what is the design?

### What about tests
- Are there tests?, do they run?
- Is coverage good? Are there missing tests?
- What kind of tests do you find? Positive, negative, boundary checks?

### Propose improvements
Either
- improving existing tests 
- proposing new (missing) tests
- if you find problems please open issues in the github repository of the project
- you can also propose pull requests to address problems and improve the project



 
  Pour l'installation, le README du git nous donnes un script d'installation. C'est donc une pratique simple et efficace. De part le fait que c'est un script et
  non une procédure utilisateur (clique ici, puis là, etc...), cela tiens bien mieux l'évolution au gré des mises à jours et permet un vraie gestion de l'installation par
  les créateurs d'AVL ainsi que de la mainetnance pharo qui peut gérer ses changements internes directement via les méthodes natives appelées dans le script.

  Compliqué à fouiller/comprendre pour un néophyte complet. Il n'y a quasiment aucun commentaire ou des commentaires 'obvious' (Classe AVLNode => commentaire: "Node for AVL")
  Si on ne sait pas déjà ce qu'est AVL, ni ce qu'est un arbre binaire, la découverte n'est vraiment pas encadrée.
  D'après les inspectors, les classes hérites des collections et implémente les arbres AVL. Cela peut servir dans d'autres projets, comme indiqué dans le readme, notamment sur la contenu de chaque noeud. C'est une     base à exploiter.

  Le nom "AVL" m'a fait me poser la question de pourquoi ce nom. Le commentary êtremement léger ne m'a pas répondu alors j'ai cherché en ligne. AVL => nom des créateurs.

  Quand on s'attarde sur la structure des packages, on voit une séparation en 4. Un package pour les arbres en soit, un pour l'inspector, un pour les tests, et un pour la baseline. Donc
  déjà, on a une première idée de comment explorer.

  Package AVL-Tree: très peu de classe, rapidement on comprend, quand on connait les arbres binaires, quelles classes implémentes quels aspects grâce aux noms explicite.

  Package Inspector: plusieurs méthodes graphiques, dans les inspections des AVLTree, la visualisation de l'onglet jusque là absent "AVL" permet de voir via des exemples comment il se comporte.
  -> Permet de bien user d'exemple eet comprendre rapidement l'implémentation du modèle, par exemple en faisant des 'add: int' en boucle, on voit que l'ordre d'ajout est 'fils droit, fils gauche, contenu, fils de droit de fils droit...' assez rapidement est de manière claire.

  Package Test: DrTest passe tout les tests aux verts. On a un coverage de 90% et 5 méthodes non couvertes du tout. On pourrait les couvrir. (A approfondir)

  Package baseline: Dépendant de metacello, le code qui permet l'intégration par script du projet dans nos images.


  `L'interêt qu'il en ressort est que AVL permet une implementation simple d'une structure hiérarchique de donnée, avec rendu visuel, mais à vocation d'être assimilé par d'autres projets, étant (au delà du cadre théorique pur) limité en utilisation seul.`

  

