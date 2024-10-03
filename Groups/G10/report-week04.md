# Rapport semaine n°4 - Groupe 10

## Elsa Logier




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
   classesToMutate := 'Nom-Du-Paquet' asPackage definedClasses.

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

### Réalisé à la maison


### Exercices
