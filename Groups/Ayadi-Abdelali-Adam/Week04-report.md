# Rapport quatrieme semaine: Double dispatch

## Abdellatif

### Double dispatch

- C'est le principe central du patron de conception Visitor.
- Il permet de détecter le type d'une classe sans utiliser de bloc conditionnel ambigu.
- Cela a une forte corrélation avec le binding.
- Ce principe permet de savoir à qui envoyer le message en fonction de l'argument (en plus du destinataire).
- Pour mieux comprendre, je me suis appuyé sur ce site ([lien](https://refactoring.guru/design-patterns/visitor-double-dispatch)) que je trouve très utile.

### Ce que je ne comprend pas très bien

- Je ne comprends pas vraiment le late binding et le static, je dois y revenir ultérieurement.


## Skander


### Double dispatch

Lors de cette séance j'ai implementé le jeu pierre papier scisseaux en utilisant le double dispatch présenté dans le cours.
Le but de l'exercice et de mettre en œuvre le jeu "Pierre-papier-ciseaux" en évitant l'utilisation de déclarations conditionnelles (if) pour décider du vainqueur du jeu.

J'ai implementé trois classes : Stone, Paper et Scissors
Chacune de ces classes définit une méthode playAgainstStone, playAgainstPaper et playAgainstScissors pour déterminer le résultat du jeu.

Lorsque la méthode vs: est appelée sur un objet, elle sélectionne la bonne méthode à exécuter en fonction de l'objet sur lequel elle est appelée et de l'objet passé en argument.

La solution est extensible, ce qui signifie que vous pouvez ajouter de nouveaux éléments au jeu (par exemple, Spock et Lizard) sans avoir à modifier le code existant. Cela démontre la puissance de la double expédition et de la conception modulaire.
## Abdelali

- Révision du design pattern "double dispatch"
- Compréhension de l'importance du polymorphisme pour éviter les structures conditionnelles.
- Préparation à la présentation en analysant les projets et en tentant d'appliquer des concepts de reverse engineering.
- Recherche des mutants et essayer d'en tuer sur les projets
- Préparation pour la présentation orale.
