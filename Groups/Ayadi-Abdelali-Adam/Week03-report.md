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

## Skander

### Reverse Engineering

Pendant cette séance, j'ai appris plusieurs aspects importants concernant la classe LRUCache de Pharo et son utilisation.

- J'ai acquis une compréhension du concept de Cache LRU (Least Recently Used), y compris sa signification dans le contexte de la programmation. je me suis aidé de ressources comme wikipédia pour comprendre le principe d'un cache LRU

- J'ai examiné la classe LRUCache dans le package System-Caching de Pharo. J'ai cherché à comprendre sa structure et le nombre de méthodes qu'elle contient.

- J'ai appris comment LRUCache est utilisée dans le code existant en recherchant des senders de la méthode "at:ifAbsentPut:" ce qui est très utile si on veut analyser un projet en se focalisant sur une méthode en particulier et en regardant ses senders et ses implementors.

- J'ai appris à rester concentré sur l'objectif principal, en ignorant les détails non pertinents afin de mieux comprendre une fonctionnalité d'un projet.

### Test Quality

J'ai également appris a explorer en profondeur les Tests de Mutation en utilisant la bibliothèque mutalk.

-  La première étape consistait à évaluer la couverture du code de la bibliothèque UUID de Pharo en utilisant les tests du package Network-Tests. J'ai compris l'importance de la couverture du code et comment l'augmenter pour obtenir une meilleure qualité de test (par exemple, tester les méthodes qui sont pas encore couvertes par les tests)

- j'ai exploré la qualité des tests de la bibliothèque UUID en utilisant les tests de mutation. J'ai découvert que le score de mutation (killed/mutants) peut différer de la couverture du code.

- J'ai appris que la couverture des tests est un indicateur important de la qualité des tests. Une couverture élevée indique généralement une meilleure  qualité, car elle signifie qu'une grande partie du code est testée. Mais, une couverture élevée ne garantit pas nécessairement que les tests sont pertinents ou qu'ils capturent tous les problèmes potentiels.

- le score de mutation est généralement considéré comme une mesure plus précise de la qualité des tests que la simple couverture de code. Il met en évidence la capacité des tests à détecter les changements dans le code source en introduisant des variations intentionnelles (les mutants) et en mesurant la capacité des tests à les tuer

- le score de mutation augmente quand on rajoute des tests qui vont tuées plus de mutants et gérer plus de cas

- J'ai exploré des techniques pour améliorer le temps d'exécution des analyses de mutation comme ajouté with: AllTestsMethodsRunningMutantEvaluationStrategy new. ce qui va réduire le temps de l'analyse de mutation.
