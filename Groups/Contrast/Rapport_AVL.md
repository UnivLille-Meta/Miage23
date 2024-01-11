
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

  Regardant les mutation tests sur AVL, en installant mutalk, on a obtenu comme résultat d'analyse des mutants 17 en nombre total des mutants générés, 13 tués et 4 vivants
  ![](pictures/AVL%20mutants.png)


# Design pattern

## Null Pattern

Le Null pattern est implémenté pour pouvoir traiter l'abseence des oeuds dans l'aborscence. Comme ça lors du parcours du viewer pour la représentation graphique ou autre, l'"absence est mieux intégrée, sans "if !null". Permet par un double dispatch d'avoir un comportement nul snas spec/switch de condition

# Testing

## Coverage

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/d39b0092-39af-43bc-acd2-336cca8b49aa)

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/ec99023f-8307-4f3f-9fd1-2a49185d027a)


## Mutation Testing

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/e2c59894-39b0-428c-964c-9f225eb3c16f)

### Exemple de mutation

#### Mutation => checking de booleen vérifié à valeur fixe à true

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/4473298e-18e7-4062-8446-26d8844fa8ba)

#### Mutation => Switch d'opérateur logique

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/5bf64c96-c9c0-4875-8cd5-726099bfe8d6)




## Improvement

Amélioration covering du Tree Inspector, 40% c'est faible

  

