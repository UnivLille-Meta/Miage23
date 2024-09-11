# WEEK 1 : 
# KHADIJA BESBAS 




## Homework

## 1) Learn about collections in Pharo and their iterators

#### What is a collection and what is it used for? What kind of collections does Pharo standard library provide? How do you iterate collections and what are differences between them? How did you find this information?

Do not hesitate to add in the report code examples that you tried.
***
***
- Une collection regroupe un ensemble d'éléments que l'on va pouvoir manipuler.
- Dans Pharo on retrouve plusieurs collections : 
    + OrderedCollection (dynamically growing)
    + Array (fixed size, direct access)
    + Set (no duplicates)
    + Dictionary (key-based, aka. maps)
J'ai trouvé ces informations dans le Mooc, 3eme semaines.
On peut lire l'ensemble des collections dans une des diapos du mooc semaine 3, diapo 7 de itérators ( http://rmod-pharo-mooc.lille.inria.fr/MOOC/PharoMOOC/Week3/C019-W3S09-Iterators.pdf )


Pour itérer sur une collection, on peut utiliser do, collect, select, reject, detec etc... ( dispo 9 ).
Ces messages ne font pas la meme chose :
- do: iteratation
- collect:  iteration et recupération des résultats 
etc.. ( toujours dans la diapo 9 ).

On en trouve d'autre que je n'ai pas cité dans le même pdf.



## 2) Learn about conditionals in Pharo

#### How do you write conditionals in Pharo? What is different from other programming languages? Can you think about the benefits and drawbacks of the approach? How did you find this information?
***

Dans la page du mooc on peut lire : 
"Yes you send a message to a Boolean to perform a conditional."
Il faut donc envoyer un message à un booléen pour effectuer un conditionnel.
Contrairement au autre language, if ou else par exemple sont des messages envoyés à un boolean.

On retrouve dans le mooc plusieurs exemples : 
```
Weather isRaining
ifTrue: [ self takeMyUmbrella ]
ifFalse: [ self takeMySunglasses ]
```

Je pense qu'avec cette façon on a déjà une plus grande lisibilité du code. De plus, comme tout est object en pharo, on pourrait modifier le comportement si on le voulais.


## 3) Learn how to create classes and methods

#### How do you write a small program with classes and methods in Pharo? Pharo is indeed, very IDE oriented and you have to get used to the tooling. How did you find this information?

#### What program did you write? What problems did you find?
#### Please provide a github repository link.

****
Pour créer une classe : 
- on créé un package qu'on vient nommer ( Browse => System Browse )
- on y ajoute une classe
- on ajoute des méthodes

Ayant suivis le cours de méta en L3, j'ai pu apprendre comment créer une classe. De plus, lors de la première séance, j'ai pu bénéficier d'un rappel.

J'ai écris un classe Client, qui définis un client avec son nom et son age.

Il y a eu un problème que j'ai rencontré : je voulais définir mon object avec un nom à la création ( en java, j'aurai ajouter un paramètre à min constructeur ).
Je n'ai pas sû comment le faire. 

Voici le lien de mon dépot :
https://github.com/kbsb0/homework1




## Learn about the basic Pharo coding style. 

#### Pharo methods are usually small and readable. What rules are common to follow? Are there tools that show you violations to such rules?

#### Please show code examples that violate some rules.

#### _Hint:_ look for the `Pharo with Style` free book.

****

Source: https://github.com/SquareBracketAssociates/Booklet-PharoWithStyle/blob/master/Chapters/withStyle.md



- Choisir des bons noms
- Favoriser les ordres directs pour les noms de méthodes
- Noms simples et direct
- Noms pertinents, sens et prononciations uniques
- Noms des accesseurs doivent suivre les noms des varibles.
- un nom de paramètre ne peut pas commencer par une majuscule
- On évite d'utiliser un nom de varibale qui décrit son type
- Les noms de test commencent par "test"

Il y a des erreurs que j'ai rencontré moi même en écrivant du code.
Voici deux exemples d'erreur : 
- Je veux écrire un setter, qui permet de définir un age. Je ne peux pas écrire : 
age: AnAge 
    age := AnAge

Le paramètre AnAge ne peut pas commencer par une majuscule.


- On ne peut pas non plus avoir un paramètre qui porte le même nom qu'une variable d'insance : 
age: age 
    age := age





## Extras

#### Can you learn about cascades and block closures? How do you approach it?

#### Did you ask questions in the discord channels or mailing lists?

#### This is extra points ;)

Je n'ai pas poser de question par mail, ni sur le discord.
Néanmoins, j'ai posé plusieurs questions concernant l'anvoie du projet via github, à d'autres élèves, qui ont pu m'aider. ( Mise en place d'un token, ce que je n'avais jamais fais ).



****


# Rapport de la semaine 

Ayant fait meta l'année derniere, j'ai cette semaine :
- revue les bases, la syntaxe ( sur le site de pharo, mooc, sur git, vidéos youtubes )
- forker le dépôt
- fait une PR pour modifier mon nom du fichier members.md
- discuter avec mon groupe de l’organisation que nous allons avoir pour réaliser les katas
- créer un dépôt pour le TP Chess
- Répondu à des questions d'autres élèves concernant git ( PR ) 
- Demander de l'aide pour l'ajout d'un dépot sur github ( utilisation de token )


Je me suis poser aussi des questions: 
- comment définir un object avec des paramètres lors de la création ?
- Comment se passent la gestion des conflicts lors de l'utilisation de plusieurs branches ?



****
# GODET CYRIL
****
# BOU ALEXANDRE

