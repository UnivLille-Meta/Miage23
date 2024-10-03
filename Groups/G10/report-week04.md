# Rapport semaine n°4 - Groupe 10

## Elsa Logier

### Une issue

Cette semaine j'ai ouvert une issue sur le github du mooc car le lien vers une vidéo renvoie une erreur 404

https://github.com/pharo-mooc/AdvancedOODesign/issues/100


### De l'entraide 

Durant le cours , nous nous sommes entraidées avec Ikram sur le kata des pions. Nous avons aussi eu l'occasion de s'entraider durant la semaine sur ce même sujet.
J'ai aussi aidé Maureen sur le kata des pions grâce à ce que j'ai appris.


### Les Lectures

J'ai fait la lecture en préparation de la semaine prochaine *Learning from a Sokoban implementation*. Je pense avoir bien compris 

J'ai aussi re-regardé la vidéo *About global variables* et un peu mieux compris. 


### Mon travail sur le Kata cette semaine 

Cette semaine, j'ai implémenté le fait que les pions puissent bouger de deux cases pour leur premier mouvement. 
Evidemment, avec cette implémentation viens l'implémentation d'un nouveau jeu de test à propos des nouvelles fonctionnalités.

Voici le lien vers ma branche
https://github.com/AymericJak/chess-group-10/tree/developpement-elsa


### Mutation testing sur les tests de chess

J'ai effectué un mutation testing sur le package de tests du projet chess. J'ai obtenu 49% des mutants tués ce qui signifie que mes tests ne couvrent pas tout le code du projet et/ou que les tests ne sont pas bien faits.


## Aymeric Jakobowski

### Réalisé en cours

- J'ai créé une issue sur le repo Miage 23 : [Update lecture link for week04 (#369)](https://github.com/UnivLille-Meta/Miage23/issues/369)
- Réalisation partielle du TP `Mutation testing practice` :
   - Quand on analyse le taux de couverture du code : 79.59%. 
   - On peut augmenter ce taux en réalisant des tests supplémentaires. Nous avons une liste de méthodes non couvertes par les tests, et partiellement testées.
   - Un taux de couverture élevé ne signifie pas forcément des tests de qualités. On peut très bien réaliser un tests qui font une centaines de lignes, qui teste plusieurs méthodes d'une traite. Mais ce n'est pas très maintenable, compréhensible.
   - Pour faire une analyse, nous la réalisons comme suit :
   ```smalltalk
   testCases := { ClasseDeTest1 . ClasseDeTest2 . ClasseDeTest3 }.
   classesToMutate := { Classe1 . Classe2 }.

   analysis := MTAnalysis new
      testClasses: testCases;
      classesToMutate: classesToMutate;
      testSelectionStrategy: MTSelectingFromCoverageTestSelectionStrategy new;
      stopOnErrorOrFail: true.

      analysis run.
   ```
- Enfin, j'ai regardé les diaporamas :
  - M6-1 - A double dispatch starter: Stone Paper Scissors
  - M6-2 - Double dispatch: Does not have to be symmetrical
  - M6-3 - a Die + a DieHandle: Practicing dispatch more

   Je n'ai pas encore assimilé l'ensemble de ce concept, et ce n'est pas encore naturel pour moi d'implémenter des solutions avec le double dispatch. Le cours du vendredi 4 octobre va m'aider.

- J'ai aussi continué à analyser le projet Chess. Dans mon rapport précédant, je me demandais d'où venaient les lettres 'L', 'B', ou autres pour le rendu des pièces.

   Et bien c'est une question pour laquelle j'ai obtenu la réponse. Dans le programme de l'application, la manière dont le rendu est réalisée, est de sorte que les images sont récupérées sur un repository GitHub ([open-chess-font/output_svg_tiles](https://github.com/joshwalters/open-chess-font/tree/master/output_svg_tiles))

### Réalisé à la maison

Cette semaine, j'ai eu moins de temps pour travailler le Pharo chez moi. Mais j'ai tout de même réalisé :
- Application du TP `Mutation testing practice` sur notre projet Chess.
- On s'est entrainé à expliquer les différentes notions sur les mutants avec Ikram. Puisque pour mieux assimiler les connaissances et être sûr de comprendre une chose, il faut expliquer à l'autre, se poser les bonnes questions, etc.

Code :
```smalltalk
testCases := { MyRookTests . MyFENTest . MyKingTest }.

classesToMutate := { MyRook . MyKing . MyFENParser . MyFENGame }.

analysis := MTAnalysis new
	testClasses: testCases;
   classesToMutate: classesToMutate;
   testSelectionStrategy: MTSelectingFromCoverageTestSelectionStrategy new;
   stopOnErrorOrFail: true.

analysis run.

analysis generalResult mutationScore.

"To retrieve the alive mutations"
alive := analysis generalResult aliveMutants.

analysis generalResult.
```
On obtient :
> 665 mutants, 153 killed, 512 alive, 0 terminated. Mutation Score: 23%.

Le côté assez ahurissant de ces nombres est dû au manque de tests. Comme un grand nombre de tests n'existent pas actuellement, chacune des fonctions va alors avoir un nombre de mutant assez important. Ainsi, en ajoutant quelques tests, le score peut monter assez rapidement.


### Objectif pour la séance du 11 octobre

- S'entraîner pour le DS en revoyant des questions types (différences entre super et self par exemple). Par exemple, je sais à quoi ces derniers servent, mais je ne sais pas forcément l'expliquer. J'ai du mal à mettre des mots sur des notions même si je sais les appliquer.
- Refaire également des exercices comme l'implémentation des opérateurs logique sans utiliser de `if` (or, not, and). C'est la notion de dispatch dont il est question.
- Proposer une implémentation pour le projet des échecs sur le kata `Refactor piece rendering` en utilisant le double dispatch.