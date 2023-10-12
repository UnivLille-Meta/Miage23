# Rapport Troisieme Semaine : Reverse Engineering, Test Quality

## Abdellatif

### Reverse Engineering

L'objectif global est de comprendre comment la classe LRUCache fonctionne et comment elle est utilisée afin de pouvoir éventuellement la modifier ou l'améliorer à l'avenir.

les étapes suivi:

- Comprendre le comportement à partir d'un document tierce (wiki) pour avoir une idée de départ.
- Jeter un oeils sur la structure du package, à fin d'identifier qui est important et qui ne l'est pas. Le plus important est de ne pas se perdre dans les idees et garder le focus sur ce dont on a besoin.
- Changer un peu de perspective, se metre dans la peau de l'utilisateur et de l'implementeur.
- identifier les key features et faire un zoom dessu, ignorer le reste par exemple dans LRUcache on a ignoré tous ce qui est critical et ce que ça peut faire car ce n'est pas notre sujet.

### Test Quality

- Pour déterminer l'efficacité d'un test :
  - Introduire délibérément des bogues pour évaluer si le test fonctionne correctement en détectant ces bogues.
  - Créer des bogues artificiels appelés "mutants" (par exemple, en changeant "+" en "-").
  - Déterminer si le mutant survit ou est tué, quantifié sous la forme #tués/#mutants.
- Les enseignements tirés de la mutation sont les suivants :
  1. Identifier les parties non testées du code.
  2. Localiser les zones où les tests ne contiennent pas d'assertions.
  3. Identifier les situations où des mutations telles que "+b = a" et "-b = a" se produisent, ce qui peut ne pas nécessairement indiquer des erreurs, surtout lorsque "b" est égal à zéro.
- Améliorer les tests en fonction des points 1 et 2.
- Etre prudents avec le point 3, car des mutations non détectées peuvent représenter des équivalences acceptables.
- La mutation peut être coûteuse en termes de calcul en raison d'un nombre potentiellement élevé de mutants.
  - Envisager d'optimiser le processus de mutation ou d'utiliser des techniques de sélection de mutants plus intelligentes.

### Ce que je n'ai pas fait & ce que je veux savoir

- Su quoi ignoré. Comment savoir qu'on ignore pas quelque chose d'important.
- Comment gagner du temps et lire efficacement le code.
- Si le projet et bien trop grand, dois-je lire tout pour identifier ce dont j'ai besoin ?
- Comment applique la mutation sur d'autre classe ? par example le AVL.
  ## Edem
Tout d’abord j’ai compris la différence entre lru et lfu : LRU est basé sur la récence, tandis que LFU est basé sur la fréquence.
-En pharo , il existe une hiérarchie intéressante liée à la gestion du cache. Elle inclut les classes "AbstractCache," "LRUCache," et "TTLCache," qui montrent comment différentes politiques de gestion du cache sont implémentées. j’ai focalisé sur la classe LRUCache et spécifiquement sur la méthode : at:ifAbsentPut: qui permet de comprendre le principe d’ajout de nouveaux éléments au cache selon la  politique lru et les notions de “miss” et “hit”.
-j’ai remarqué que  le "keyIndex Dictionary" est un composant essentiel de la LRUCache qui permet de gérer les emplacements des paires clé/valeur dans la liste chaînée double, facilitant la gestion du cache en fonction de la récence d'utilisation des données.
- j’ai fait les exercices de TestQuality: j’ai analysé les tests de mutation et j'ai compris que le taux de couverture ne reflète pas toujours la qualité des tests. En comparant le taux de couverture et le ‘mutation score’, j'ai réalisé l'importance d'avoir des tests robustes qui détectent efficacement les mutations, même dans les parties du code apparemment couvertes.
-Lorsqu'un mutant survit aux tests, cela indique une faiblesse potentielle dans la suite de tests, car les modifications apportées au code n'ont pas été détectées. Cela souligne des zones où les tests pourraient être améliorés pour assurer une couverture complète du code.
-J'ai exploré le framework Artefact de Pharo avec l'objectif de générer des PDF en comprenant la structure des classes. En ajoutant des objets à des objets parent comme PdfDocument et PdfPage, j'ai créé des documents PDF. Cette approche m'a aidé à comprendre comment chaque élément, en tant qu'objet enfant, contribue à la structure globale du document.
