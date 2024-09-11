## Rapport des activités de maisons à preparer

### - Partie Wagnan SORO

> ### _What is a collection and what is it used for?_
> une collection est une classe qui hérite de Collection ou d'une de ses sous-classes, et qui permet de gérer un groupe d'éléments. Les collections dans Pharo sont polymorphes, ce qui signifie qu'elles partagent une interface commune, et peuvent donc être manipulées de manière uniforme

> ### _What kind of collections does Pharo standard library provide?_
> #### _OrderedCollection_
> est une collection dynamique qui permet d'ajouter et de supprimer des éléments tout en préservant l'ordre d'insertion.![img_7.png](img_7.png)
> #### _Array_
> collection de taille fixe, on accède aux elements par des indices.![img_5.png](img_5.png)
> #### _set_ 
> collection que ne permet pas les redondances. ![img_3.png](img_3.png)
> #### _Dictionary_
> table de hachage, sous forme de clé valeurs.![img_4.png](img_4.png)

>### _How do you iterate collections and what are differences between them?_
>On peut itérer les elements d'une collection de plusieurs façons, on note :
> * `reject` : ![img_9.png](img_9.png) Eliminer les elements de la collection qui sont pairs
> * `do` : Exécute une action pour chaque élément de la collection          . Ne retourne pas de nouvelle collection.
> * `select` : ![img.png](img.png) Renvoie une nouvelle collection avec les éléments qui répondent au critère donné.
> * `detect`:![img_1.png](img_1.png) Détecter le premier element qui repond à un critère 

>### _How did you find this information?_
> J'ai trouvé les infos dans le MOOC sur youtube et dans les cours de la L3

>### _How do you write conditionals in Pharo?_ 
> ifTrue: , ifFalse:, ifTrue:ifFalse:
> ![img_2.png](img_2.png)
> ![img_8.png](img_8.png)

>### _What is different from other programming languages?_ 
> Avec le langage java par exemple, on a des différences qui sont que 
En Java, la syntaxe if utilise des parenthèses pour délimiter la condition et des accolades {} pour délimiter les blocs de code à exécuter.
En Pharo, la condition est suivie directement par des messages ifTrue: et ifFalse:, qui sont des méthodes envoyées à l'objet condition.
Java est un langage orienté objet avec une syntaxe héritée du C. La structure de contrôle if-else est une construction syntaxique de base.
Pharo est un langage purement orienté objet basé sur Smalltalk, et même les contrôles de flux comme ifTrue: et ifFalse: sont des messages envoyés à des objets,ce qui reflète la nature uniforme et orientée message du langage.

>### _Can you think about the benefits and drawbacks of the approach?_
> En Java, la syntaxe if utilise des parenthèses pour délimiter la condition et des accolades {} pour délimiter les blocs de code à exécuter.
    En Pharo, la condition est suivie directement par des messages ifTrue: et ifFalse:, qui sont des méthodes envoyées à l'objet condition.
    Java est un langage orienté objet avec une syntaxe héritée du C. La structure de contrôle if-else est une construction syntaxique de base.
    Pharo est un langage purement orienté objet basé sur Smalltalk, et même les contrôles de flux comme ifTrue: et ifFalse: sont des messages envoyés à des objets,ce qui reflète la nature uniforme et orientée message du langage.

>### _How did you find this information?_
> Dans les leçons disponibles en ligne sur github

>### _How do you write a small program with classes and methods in Pharo?_
> un exemple de class et méthodes ce trouve dans ce depôt
> il s'agit d'une classe representant un dé à 6 faces
> https://github.com/marik27/C3P_Devoirs
## _How did you find this information?_
> Ayant bien compris le mode de fonctionnement de l'écriture des classes et méthodes en pharo, j'ai choi un exemple que j'ai décidé d'implémenter.

> ### - Partie Ouassila BOUKHARS
> 
> 
> 
> 

> ### - Partie Ikhimat ADEOYE
> 
> 
> 
> 