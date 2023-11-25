# Semaine 9

## Abdellatif

### Git repo [(link)](https://github.com/sbaka/game_pharo)

Pendant les 2 dernières semaines j'ai créé le git repos pour notre projet de jeux puis j'ai ajouté les membres de l'équipe en les expliquant comment ça marche. On a chacun notre fork et puis on merge à chaque fois qu'on est sure que tout est bon.

### Avancement sur le projet

Nous avons mis du temps pour choisir le jeux, et puis on s'est mis d'accord sur Galaga, jeux proposé par Guille.
Pour commencer nous nous sommes inspirer du jeux Sokoban, qui est basé sur myg. On a parcourut presque toutes les classes ce qui appris les points suivants:

1. Dans myg le design du jeux se fait avec des chaines de characters par exemple `'###'` peut représenter 3 blocs de mur
2. pour que myg comprenne que `#` c'est un mur, il faut faire le binding grace à la méthode static `textualMapCharacter`.
3. Les images doivent être traduite en base 64, et puis myg s'occupe de les afficher.
4. Pour les afficher nous les mettons (si ils n'y sont pas déjà) dans un dictionnaire `Icons`, avec comme clé le nom de l'icon.
