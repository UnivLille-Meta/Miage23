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

### Question : 

N'ayant pas compris si l'on devait choisir un kata chacun ou deux kata pour le binôme, que l'on se diviserait ensuite. Nous avons choisi deux katas ensemble sans vraiment ce les repartir pour le moment.

## Baptiste PARENT

### Extras about language

### Katas choisis : 

 * Fix pawn moves! (Practice debugging and testing)
 * Game Replay (Practice refactoring and debugging)

### Katas supplémentaire si on a le temps : 

 * Add pawn promotion (Practice code understanding and debugging)
