## Thomas LIENARD

Cette semaine, nous avons pu commencer le reverse engineering. J’ai donc pu m’exercer sur le sujet en me baladant dans les classes du projet Chess, en analysant le code présent et en testant les différentes fonctionnalités du jeu grâce au playground.

### Extras about language

Les méthodes de classe sont utilisées pour des opérations qui concernent la classe elle-même plutôt que ses instances, tels que la création de nouvelle instance de cette classe.

Le mécanisme de lookup est le meme pour les methodes côté classes et côté instances.

Super pointe sur le receveur du message comme self et n'est pas la super classe de notre classe. Il sert à aller chercher la method dans la super classes puis à l'appliquer sur le receveur.

Pour tester ma compréhension j'ai utilisé une question posée dans une vidéo du MOOC : 

```
Object subclass: #A
	instanceVariableNames: ''
	classVariableNames: ''
	package: ''

  foo 
	  ^ self class == self class

| instance result |
instance := A new.
result := instance foo.
```

J'ai donc, d'après ce que j'ai compris du cours, supposé que le résultat serait True car super et self pointent tout deux sur le receveur du message donc dans notre cas A. Le résultat sera donc A class == A class donc évidemment True.

Et après avoir éxécuté ce code dans Pharo j'obtient le résultat escompté.

## Baptiste PARENT

Cette semaine, j'ai regardé les vidéos proposés et lu les pdf (et j'avais bien vraiment compris super).

Pour ce qui est du jeu d'échecs, j'ai commencé par faire du reverse engineering pour comprendre comment le jeux fonctionne.

J'ai donc d'abord regardé le fonctionnement global pour ensuite voir plus en détail.

Premièrement, j'ai étudié le code qui nous étais fournis pour lancer une partie et j'y ai ajouté des commentaires pour le rendre plus compréhensible.
```
board := MyChessGame freshGame. "créer le plateau"
board size: 800@600.
space := BlSpace new.  "créer une fenêtre"
space root addChild: board. "ajouter le plateau dans la fenêtre"
space pulse.
space resizable: true.
space show. "afficher la fenêtre"
```
Ensuite j'ai fait un test de création de fenêtre.
```
"code minimum pour ouvrir une fenetre avec un bouton dedans"
window := BlSpace new.
button := ToButton new.
button labelText: 'Click!'.
window root addChild: button.
window show.
```
Puis j'ai regardé plus en détail comment était créer les pièces, le plateau et le jeu.

Le kata qui m'a intéressé en premier était "Make the game UI themable" donc je me suis penché sur comment sont fait les rendus graphique. J'ai découvert la notation FEN du jeu d'échecs qui permet de mettre dans un fichier texte la position de départ des pièce sur le plateau, j'ai ensuite vu la partie "Relevant design points" du README grâce à laquelle j'ai pu comprendre les lettres données à chaque pièce dans leurs fonctions de rendering, j'ai essayé de remplacer une lettre par une image mais ça n'a pas fonctionné (ça aurait été trop simple). C'est encore flou pour moi à quel moment les lettres sont remplacé par les images, il faudrait que j'étudie plus le package importers.

En tous cas c'était intéressant de faire une "enquête" pour comprendre un projet, ça m'a aussi permit d'être plus à l'aise sur l'IDE pharo à force de l'utiliser.

### Question : 

N'ayant pas compris si l'on devait choisir un kata chacun ou deux kata pour le binôme, que l'on se diviserait ensuite. Nous avons choisi deux katas ensemble sans vraiment ce les repartir pour le moment.

### Katas choisis : 

 * Fix pawn moves! (Practice debugging and testing)
 * Game Replay (Practice refactoring and debugging)

### Katas supplémentaire si on a le temps : 

 * Add pawn promotion (Practice code understanding and debugging)

### Lien vers notre dépôt : 

Toute nos modification du jeu Chess seront sur le repo suivant : https://github.com/ThomasLienard/Chess  que nous diviserons en branche pour le modifier. 
