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
