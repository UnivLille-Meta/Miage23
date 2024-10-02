# Rapport semaine n°2 - Groupe 10

## Elsa Logier

### Révisions

J'ai commencé la semaine par regarder la vidéo du mooc 'Parenthèses vs Crochets' ainsi que 'Avez-vous vraiment compris Super?' afin de m'assurer de la compréhension de ces concepts. 

### Dispatch 
Pour me remémorer l'utilisation du dispatch j'ai ajouté à mon magasin de peluches (créé la semaine dernière pour m'exercer) différents types de peluches avec différents prix.
Le dispatch est utilisé pour changer le nom et le prix des peluches. 
J'ai ensuite regardé à nouveau les vidéos M1-1 et M1-2 du Mooc pour être sûre de comprendre le dispatch. 


### Préparation du prochain cours

J'ai ensuite lu les deux lectures de la semaine sur le reverse engineering. Je connais le concept et suis familière car j'ai dû l'utiliser lors de mon stage et l'année dernière en cours. 
J'ai eu du mal à me plonger dans les lectures car je n'ai pas trouvé de vidéo et j'apprend mieux en écoutant. 


### Le Style de la semaine

Cette semaine j'ai étudié le chapitre deux du livre *Pharo With Style* qui porte sur les noms de variables. 
J'ai appris qu'en Pharo :
- Il vaut mieux utiliser des noms de variables explicites et non typé afin de ne pas avoir à le redéfinir si la variable change de type. (il en va de même pour les arguments)
- Pour les API (set de messages) il est plus indiqué d'utiliser des arguments les plus explicites possibles sans toutefois détailler au maximum. Il faut trouver le juste milieu.
- Pour les booléens, il vaut mieux utiliser des prédicats ("enabled" ou "disabled")
- Pour les objets qui ne sont pas booléens on utilise des noms communs et des phrases pour les nommer. 

## Aymeric Jakobowski

### Réalisé en cours

- J'ai retravaillé en début d'heure (sur feuille), la manière dont on devait implémenter le OU logique ou encore le ET logique. Pour me remémorer les vidéos et être certain que j'ai bien compris la manière dont ces derniers étaient implémenté.
- J'ai réalisé un peu plus de la moitié du TP sur les dés.

### Réalisé à la maison

- J'ai continué le TP sur les dés. Il me reste une ou 2 questions. Je le terminerai ce week-end en même temps que le TP sur les cartes SVG. (j'ai honnêtement moins pris le temps cette semaine avec la braderie de Lille etc.).
- J'ai regardé les 2 PDF (j'aurais aimé avoir une vidéo, mais je n'ai pas trouvé ?):
  - https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/1-BasicOnReverseEngineering.pdf
  - https://rmod-files.lille.inria.fr/DesignCoffeeClub/2023-Miage/reverse-engineering-LRU.pdf

### Exercices

J'ai créé 4 classes :
- Animal
- Cat
- Dog
- Giraffe

```
Object << #Animal
	slots: {};
	package: 'Animal'

Animal << #Cat
	slots: {};
	package: 'Animal'

Animal << #Dog
	slots: {};
	package: 'Animal'

Animal << #Giraffe
	slots: {};
	package: 'Animal'
```

Notez que pour la classe Animal, j'ai fait un clic droit dessus, est allé dans refactoring puis l'ai défini en tant que classe abstraite.

Ensuite, pour chacune de ces classes j'ai défini la méthode `talk`, à l'exception de la giraffe puisque celle-ci n'émet aucun sons.

Pour tester, j'ai été dans le playground :
```
| animal dog cat giraffe |

animal := Animal new.
dog := Dog new.
cat := Cat new.
giraffe := Giraffe new.

Transcript show: animal talk ; cr.

Transcript show: dog talk ; cr.

Transcript show: cat talk ; cr.

Transcript show: giraffe talk ; cr.
```

J'ai obtenu ceci :
```
... it is sound ... nothing ...
Ouaff
Miaouuu
... it is sound ... nothing ...
```

Ainsi, pour la giraffe, comme la méthode talk n'était pas définie dans sa classe, c'est la méthode de la classe mère (Animal) qui a été sélectionnée puis exécutée.

Néanmoins, une petite question subsiste, j'ai été autorisé à créer un objet `Animal` malgrès le fait que ce soit une classe abstraite. Pourquoi ? Ais-je bien défini la classe Animal comme abstraite ? 
