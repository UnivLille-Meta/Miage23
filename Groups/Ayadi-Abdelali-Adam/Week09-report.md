# Semaine 9 : avancement sur le projet

## Abdellatif

### Git repo (link)

Pendant les 2 dernières semaines, j'ai créé le repository Git pour notre projet de jeu, puis j'ai ajouté les membres de l'équipe en leur expliquant comment ça fonctionne. Chacun de nous a sa propre version du code (fork), et nous fusionnons nos modifications chaque fois que nous sommes sûrs que tout est bon.

### Avancement sur le projet

Nous avons passé du temps à choisir le jeu, et finalement nous nous sommes mis d'accord sur Galaga, un jeu proposé par Guille.

Notre approche consiste à commencer par le front-end et à avancer vers le back-end. Étant donné que nous ne comprenons pas encore comment fonctionnent myg et bloc, nous avons décidé de suivre cette méthode.

Pour commencer, nous nous sommes inspirés du jeu Sokoban, qui est basé sur myg. Nous avons parcouru presque toutes les classes, ce qui nous a permis d'apprendre les points suivants :

1. Dans myg, la conception du jeu se fait à l'aide de chaînes de caractères. Par exemple, '###' peut représenter 3 blocs de mur.

2. Pour que myg comprenne que # représente un mur, il faut effectuer la liaison en utilisant la méthode statique textualMapCharacter.

3. Les images doivent être converties en base 64, puis myg se charge de les afficher.

4. Pour les afficher, nous les ajoutons (si elles ne sont pas déjà présentes) dans un dictionnaire appelé Icons, avec le nom de l'icône comme clé.
