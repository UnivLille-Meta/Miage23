## Thomas LIENARD

Cette semaine nous avons découvert les mutations testing, ce qui m'a permis de decouvrir un nouveau moyen de tester et améliorer nos tests. En effet, le mutation score établi grâce au nombre de mutant tué par nos tests me semble plus prècis que le coverage car il montre qu'un certain nombre de test laissent passer des mutants et donc des erreurs potentiels.

Cependant, je pense que le coverage et les mutation testing sont utiles et même complémentaire, on peut utilisé le coverage pour savoir qu'elle code tester avec des mutants, puisque un code non couvert ne pourra pas tuer de mutant.

J'ai aussi commencé à regarder les tests de Chess, j'ai pu trouver que le projet n'avait que 45% de coverage et un mutation score de 24. 
Certaine classe tels que MyKing ont un mutation score de 0, malgré des tests présents ce qui signifie que tout ces tests doivent être modifié pour pouvoir tuer de potentiel mutant.

J'ai aussi créé mes premiers tests pour mon kata, Fix pawn moves, parmis eux deux ne fonctionnent pas puisse que je me suis rendu compte après qu'ils nécessitaient le fix d'un autre kata (Restrict legal moves) malgré cela j'ai un matation score de 51 sur la classe MyPawn, ce qui me semble être un bon début pour mes tests sachant qu'il ne couvre pas encore tout le code de la classe.

Lien du GIT : https://github.com/ThomasLienard/Chess/tree/Thomas

## Baptiste PARENT
