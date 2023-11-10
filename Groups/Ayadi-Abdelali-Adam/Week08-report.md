# Semaine 8: Design pattern Visitor

## Abdellatif

### Design pattern composite

- Implémentation de la recherche d'un fichier dans une arborescence.
- Il est important de ne pas dupliquer du code, car si jamais on devait changer quelque chose, on n'aurait qu'à changer à un seul endroit.
    - Faire cela ne signifie pas forcément que l'on aura moins de code.
    - Mais plutôt, cela ajoute plus de structure et de lisibilité.
- On doit éviter de renvoyer nil et aussi l'utilisation des conditions, sauf pour des choses basiques, comme des chaînes de caractères.
- Le modèle proposé est un DP composite.

### Design pattern Visitor

- Pour ajouter des méthodes ou des fonctionnalités, il faut toucher au code source de la structure, ce qui risque de causer des erreurs inattendues, ou peut-être coûteuses.
- L’utilisation du patron de conception "visitor" et du double dispatch peut remédier à ce problème.
- On crée des classes qui vont elles-mêmes implémenter les opérations.
- Ce patron de conception repose sur le double dispatch.
- Ce qui nous relie aux classes, ce sont les noms des méthodes. Donc, si jamais on met des noms génériques qui peuvent être utilisés partout (`visit<classe>` et accept),
- Les opérations sont donc externalisées, on ne joue pas avec le polymorphisme mais plutôt avec du double dispatch.
- Il suffit donc d’implémenter des fonctions `accept` (ou `acceptVisitor`). Il est important que ce soit le même nom, et après pour chaque fonctionnalité avoir une classe qui implémente cette dernière avec des classes qui s’appellent `visit<class>`.
