
# Gabriella 


Durant la deuxième semaine, nous avons abordées en cours différentes notions autour de la programmation objet, j'ai pris connaissance des concepts de base à connaitre pour etre plus à l'aise dans la suite de ce cours (comprendre le polymorphisme, l'héritage, la notion de class etc). Je me suis rendue compte que dans le fond, je n'étais pas vraiment tout à fait à l'aise avec tous ces concepts. J'ai donc essayé de revoir ça petit à petit de mon coté pour comprendre ça à mon rythme. 

A travers les exercices des diapos faits en cours sur le lookup avec super et self, j'ai vu que j'avais des confusions sur l'usage de ces deux messages en pharo; je n'avais pas bien compris le principe du "static" pour le super et du "dynamic" pour le self.
J'ai pu revoir ces notions avec mon binome Axel, refaire quelques exercices et je commence à etre un peu plus à l'aise avec cette notion.

Dans la suite, je souhaite continuer mon apprentissage en me focalisant point par point sur les différents principes de la programmation objet que je n'avais pas au final réellement compris. Les vidéos MOOC m'y aident beaucoup. Cela me prend plus de temps, mais je préfère prendre assez de temps pour d'abord etre à l'aide avec les bases.

Concernant le projet, on a pu en parallèle commencer à regarder globalement les 2 projets à étudier, le readme, l'installation etc et on a par la suite discuté de nos premières observations sur ceux-ci.


# Axel 

Pour cette deuxième semaine, mon changement de groupe est maintenant effectif.

Lors de la partie cours, nous sommes revenus sur les notions de POO/COO comme le polymorphise, late binding et autres. Suite a des exercices, nous nous sommes exercés sur `self` et `super` en Pharo (dynamic/static call).

Suite à cela, j'ai rattrapé mon retard de rapport dû à mon changement de groupe, et ai pris conscience de l'exercice de compréhension+présentation. J'ai commencé à regarder les 2 projets à étudier.

AVL ( https://github.com/pharo-containers/AVL )

Le Readme permet de focus assez vite sur l'utilisation technique (installation/dépendence). J'ai installé le projet via le script Metacello.

## Premieres remarques

  - Les dépendances demandent un accès github, donc le projet l'utilisant devient dépendant de git, et donc d'accès internet. Pourrait pauser des problèmes sur des projets internes en term de sécurité ou d'environnement de travail.
  - 4 packages, séparés par utilités. La documentation des packages est très légères. On est obligé de fouiller à l'intérieur pour comprendre vraiment, point améliorable
  - Le package des tests est au vert.


# Nouha

## Ce que j'ai fait:
Pour cette semaine je commence à voir de près des notions qu'on a déja vu en java, notamment lepolymorphysme et comment ça sert à remplacer les conditionnels  et le late binding (la méthode appelée est déterminée au moment de l'exécution en fonction du type réel de l'objet).

Je me familiarise avec deux nouveaux principes:
- Don't ask, tell : à la place de demander avec les conditionnels, on peut appliquer un raisonnement selon le type d'objet traité 
- Let the receiver decide : permettre à l'objet récepteur de décider de la manière de répondre à un message, le client donne les ordres et le récepteur réagit selon sa logique. 
Aussi, parmi les points importants que je retiens:
- dynamic dispatch: l'un des plus importants principes de la poo, c'esst la représentation modulaire des conditions, pas besoin des conditionnels compliqués, il vaut mieux avoir une hiérarchie de classes dynamique à l'aide du polymorphisme par exemple.
- self représente le récepteur toujours .
- super change le lookup, exactement comme on avait vu en java.

## Ce que j'ai pas fait:


## difficultés rencontrées:
ce n'était pas évident de comprendre le principe "let the receiver decide" au début mais il est bien expliqué sur le reste des diapos.

