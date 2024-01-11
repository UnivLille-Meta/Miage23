# Semaine 04

## Patricia

Pendant la semaine 04, j'étais malade et j'ai donc manqué les cours. Cependant, j'ai réussi à rattraper mon retard en lisant les diapositives, en effectuant les exercices et en regardant les vidéos du MOOC comme à chaque semaine. Voici ce que j'ai retenu de mes lectures.

### Lecture "Mutation Analysis"

J'ai compris l'importance d'avoir de bons tests. Un bon test est celui qui est capable de détecter des bugs, ce qui signifie qu'il doit couvrir différents scénarios et conditions pour identifier les problèmes dès qu'ils surviennent. Pour vérifier si les tests détectent réellement les bugs, nous introduisons de petites modifications ou mutants dans le code et vérifions si les tests peuvent les détecter.

### Mutation testing practice

J'ai également pratiqué du mutation testing en travaillant sur le projet Network-UUID. J'ai constaté qu'il existait un écart entre la couverture de code et le score de mutation. Le score de mutation s'est révélé être une métrique plus précise, car il permet d'identifier les problèmes réels dans le code et mesure la capacité des tests à détecter des changements subtils. Si un mutant survit, cela signifie que le test n'a pas réussi à détecter la modification. En revanche, la couverture de code ne fait que quantifier la proportion du code source exécutée par les tests.

J'ai également lu le rapport de reverse engineering sur LRUCache et appliqué la technique du "mutation testing" au projet AVL. En ajoutant des tests, j'ai réussi à éliminer 37 mutants.

J'ai avancé sur la préparation de la présentation pour la semaine 05.

### A double dispatch starter

J'ai repris l'exemple du cours sur le "double dispatch" pour comprendre cette technique. En créant des classes pour les éléments du jeu (Stone, Paper, Scissors, et plus tard Spock et Lizard) et en mettant en place des méthodes pour gérer leurs interactions, j'ai appris comment étendre le jeu sans modifier les classes existantes. Cette approche évite la complexité des cascades de conditions "if" et ainsi, les longues méthodes également.

Ce cours complète aussi les connaissances acquises lors du cours avec l'implémentation de #or et #not.

Important :
- Laisser le récepteur sélectionner de la bonne méthode à exécuter (grâce à l'algorithme du lookup).
- Utiliser la hierarchie de classes.

### Double Dispatch : Adding numbers as a Kata

Exemple du double dispatch sur l'addition d'entiers, de flottants et de fractions.

### MOOC

J'ai visionné les vidéos du MOOC consacrées aux module 2 et module 6 afin de combler les lacunes causées par mon absence en classe et d'avoir les explications orales.

### Ezzahra
Au cours de cette semaine, nous avons plongé dans le concept de double dispatch à travers notre travail sur l'exercice du jeu "Pierre-Papier-Ciseaux", je ne savais pas avant que je peux le faire sans aucune "if"! En parallèle, j'ai également alloué du temps à la préparation de notre présentation portant sur le projet artefact.

