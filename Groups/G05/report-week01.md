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
# Cyril Godet


1. **Learn about collections in Pharo and their iterators**

* Les collections comme les tableaux sont définies de la façon suivante : #(1 2 3 4) pour le tableau contenant les entiers 1 2 3 et 4.
* Pour itérer sur ce tableau, on peut utiliser do: , qui permet d’appliquer une instruction pour les éléments du tableau.
Par exemple: ``` #(1 2 −4 −86) do: [ :each | Transcript show: each abs printString ; cr ] ``` permet de parcourir le tableau ```#(1 2 −4 −86)``` et applique la fonction ```abs``` pour chaque élément du tableau (each) tout en affichant le résultat dans l’onglet Transcript.


2. **Learn about conditionals in Pharo**

* Pour créer des conditionnelles en Pharo, il faut utiliser ```ifTrue``` et ``` ifFalse```.
* Par exemple pour créer la méthode qui calcule la factorielle d’un nombre :

```
factorielle  
self =0 ifTrue:[^1].    
self >0 ifTrue:[^ self * (self-1)factorielle].  
self error:’Ne fonctionne pas avec les nombres positifs’  
```
* En Pharo, on vérifie si la condition donnée est vraie ou fausse.
Contrairement aux autres langages qui utilisent les mots clés if/else.

3. **Learn how to create classes and methods**

* Pour créer une classe, il faut d’abord créer un paquet (package) puis on peut ainsi créer des classes qui appartiennent à ce paquet.
Comme Pharo est un langage orienté objet, il faut bien sûr donner la super classe de la classe que l’on veut créer.

* Les définitions de classes sont des messages, puisque le message subclass: inst est envoyé à la super classes pour créer la classe.

* Pour créer une méthode, il suffit de cliquer sur le bouton dans l’interface de Pharo, un exemple de création de méthode est alors montré et il faut s’en inspirer.
* Les méthodes sont publiques et retournent l’objet (self) par défaut.

* Il existe des conventions de présentation comme : ```Integer >> factorial``` qui signifie que la méthode factorial appartient à la classe Integer.

* Pour voir si j'ai bien compris comment créer une classe et une méthode, j'ai repris l'exemple de la classe Counter en appliquant le TDD. En ce qui concerne la décrémentation du compteur, je n'ai traité que le cas où on ne distingue pas si l'attribut count est positif ou négatif (alors que dans l'exemple donné en cours, count ne pouvait pas être négatif).

4. **Learn about the basic Pharo coding style.**

* En Pharo, les méthodes sont des messages. Elles sont courtes et leur nom est explicite pour ne pas créer de confusion.
* Les instructions se terminent par le caractère ‘.’ qui correspond au caractère ‘;’ en Java.
Attention il s’agit seulement d’un séparateur et non d’un terminateur. Ce qui fait qu’il n’est pas obligatoire d’en mettre un pour la dernière instruction de la méthode.

* J’ai remarqué que l’on applique une indentation pour le corps d’une méthode. Est-ce une convention ?
* On applique l’écriture en CamelCase. c’est à dire que les noms de classe commencent par une majuscule et les noms d’une méthode commencent par une minuscule.
* Les getters et les setters portent le même nom que l’attribut. Pour les différencier, le setters possède un paramètre. Ce qui fait que lorsqu’on les appellent, par exemple pour la classe Counter et son attribut count
- count est le getter
- count: est le setter (auquel il faut ajouter la nouvelle valeur)

* Lorsque l’on crée la méthode initialize qui permet d’initialiser les attributs. Il ne faut pas oublier d’appeler la méthode initialize de la super classe (avec super initialize.)


5. **Extras**

- Le caractère ‘;’ permet de créer une cascade et de simplifier l’écriture et d’éviter la redondance puisqu’on agit sur le même objet. Par exemple :
```
Transcript cr.  
Transcript show: 1.  
Transcript show: 2
```
devient
```
Transcript cr ;  
 show: 1 ;  
 show: 2
```

* Les blocs sont des morceaux de code. (ils sont définis par [ ] )
- Par exemple le bloc ``` [:x| x+2] value:5 ``` permet de faire x+2 avec x=5 ce qui donne 7.  
Le bloc ```[:x :y | x+y] value:3 value:5```  permet de faire x+y avec x=3 et y=5 ce qui donne 8.  
La méthode value permet ainsi d’obtenir le résultat du bloc.


* Les boucles timesRepeat: permettent de répéter un bloc un certain nombre de fois
Par exemple ```4 timesRepeat: [ Transcript show: (3 + 2) printString; cr ].``` va répéter 4 fois le bloc ``` [ Transcript show: (3 + 2) printString; cr ]```
ce qui va permettre d’afficher 4 fois le chiffre 5

* Les boucles to:do: permettent d’effectuer des boucles sur des nombres par exemple : ``` 1 to: 100 do: [ :i | Transcript show: i ; space ] ```  va afficher tous les nombres de 1 à 100 en les séparant par un espace.

* Il existe aussi des boucles to:by:do qui permettent de créer des pas.
Par exemple : ``` 1 to: 100 by: 3 do: [ :i | Transcript show: i ; space ]  ``` permet d’afficher les nombres de 1 à 100 séparés par un espace mais seulement les nombres 3 par 3 : (1 4 7 10 13 16 … 91 94 97 100)


* Il existe aussi des itérateurs qui permettent de filtrer les résultats ou d’appliquer une fonction.

Par exemple avec le tableau ```#(11 38 3 -2 10) ```:


- ```#(11 38 3 -2 10) collect: [:each|each abs]``` renvoie le tableau auquel on applique la valeur absolue de tous les nombres du tableau initial soit le tableau ```#(11 38 3 2 10)```

- ```#(11 38 3 -2 10) collect: [:each|each odd] ```  renvoie le tableau auquel on applique la fonction impair (qui renvoie un booléen) sur tous les nombres du tableau initial soit le tableau ``` #(true false true false false)```

- ``` #(11 38 3 -2 10) select: [:each|each odd]``` renvoie un tableau qui est composé uniquement des nombres du tableau initial qui sont impairs (ceux pour qui la fonction odd est true) soit le tableau ``` #(11 3)```

- ```#(11 38 3 -2 10) select: [:each|each > 10]``` renvoie un tableau qui est composé uniquement des nombres du tableau initial qui sont supérieur à 10 (ceux pour qui la fonction supérieur à 10 est true) soit le tableau ```#(11 38)```

- ```#(11 38 3 -2 10) reject: [:each|each > 10] ``` est le contraire de ``` #(11 38 3 -2 10) select: [:each|each > 10]```.
Cela permet d’obtenir tous les nombres du tableau qui sont inférieur ou égal à 10 soit ``` #(3 -2 10)```

**Rapport**  
Cette semaine, j'ai notamment :  

* refais l'exercice du compteur, vu en cours jeudi dernier.   
* fais le tutoriel ProfStef et regardé les polycopiés du Mooc pour découvrir la syntaxe du langage Pharo.   
* découvert le projet avec les autres membres du groupe.   
****
# BOU ALEXANDRE

