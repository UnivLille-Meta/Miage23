# Report Week 2 - Group 9

# Salim TITOUCHE

## Introduction

Cette semaine, nous avons exploré la programmation orientée objet (OOP), notamment la gestion de l'envoi de messages (message dispatch) dans Pharo. Nous avons abordé les concepts suivants :

- Le message dispatch
- L'héritage
- La différence entre `super` et `self`
- Exemple 1 : implémentation d'un booléen dans Pharo sans utiliser les structures conditionnelles `if-else`
- a la fine jais réalisé un exercice démontrant ma maîtrise du dispatch.

## Le message dispatch

Le message dispatch est le mécanisme par lequel un objet détermine quelle méthode exécuter lorsqu'un message lui est envoyé. En Pharo, ce processus dépend de la classe de l’objet récepteur. Si la méthode n’est pas trouvée dans la classe de l’objet, la recherche se poursuit dans les classes parentes jusqu'à la classe Object.

## Héritage

L’héritage est un pilier fondamental de la POO. Il permet à une classe (sous-classe) de hériter des comportements et des attributs d’une autre classe (superclasse). En Pharo, la méthode recherche les méthodes de la sous-classe avant de remonter vers la superclasse si nécessaire.

## Différence entre super et self

    self fait référence à l'instance actuelle, et les messages envoyés à self sont recherchés dans la classe de cette instance.
    super est similaire à self mais modifie le comportement de la recherche de méthode. Lorsqu’un message est envoyé via super, la recherche commence directement dans la superclasse de la classe où le message a été envoyé, évitant les méthodes redéfinies dans la classe actuelle.

## Exemple 1 : Implémentation d'un booléen (and aussi le or et and ) sans if-else
![Implémentation des classes True et False](https://github.com/mrdedede/Miage23/blob/413741d7d37189cf2de60a2870ad67c6bf38e347/Groups/G09/image-week-2/boolen.PNG)
_Figure 1 :  implémentant le comportement booléen sans `if-else`._
### Références

- [source](https://youtu.be/6-xJbCPLSng?list=PL2okA_2qDJ-kCHVcNXdO5wsUZJCY31zwf&t=445)



# Exercice 

## Contexte

Imaginons une hiérarchie de classes pour différents types d'employés dans une entreprise. Nous avons une classe de base `Employee` (Employé) et deux sous-classes, `Manager` (Responsable) et `Developer` (Développeur). Chaque type d'employé a une méthode `work` qui imprime un message spécifique pour simuler une tâche de travail.

## Description de la Hiérarchie

### Classe de Base : `Employee`
- **Méthode :** `work`
  - **Retourne :** `Employee is working...`
  - **Description :** C'est la classe parent de toutes les autres classes dans cette hiérarchie. Elle définit le comportement de base pour un employé.

### Sous-Classe : `Manager`
- **Méthode :** `work`
  - **Retourne :** `Employee is working... Manager is managing the team...`
  - **Description :** Hérite de `Employee` mais redéfinit la méthode `work` pour fournir un comportement spécifique aux managers. Elle appelle d'abord la méthode `work` de la classe parente (`Employee`) en utilisant `super`.

### Sous-Classe : `Developer`
- **Méthode :** `work`
  - **Retourne :** `Employee is working... Developer is coding...`
  - **Description :** Hérite de `Employee` mais redéfinit la méthode `work` pour fournir un comportement spécifique aux développeurs. Elle appelle d'abord la méthode `work` de la classe parente (`Employee`) en utilisant `super`.

## Diagramme Hiérarchique en Détail

![Diagramme Hiérarchique en Détail](https://github.com/mrdedede/Miage23/blob/6aa1a3cd6511d999fe3e11b8122b8b742b5dff15/Groups/G09/image-week-2/Diagramme.PNG)
_Figure 1 : Diagramme Hiérarchique en Détail._

## Résultats Affichés

![Résultats d'Exécution](https://github.com/mrdedede/Miage23/blob/4a059560a0b2209c8861ec94dabe21569c6f2212/Groups/G09/image-week-2/resultat.PNG)
_Figure 2 : Résultats d'Exécution._

- [Lien vers le code sur GitHub](https://github.com/salim2607/MyCounter/tree/master/src/weeak-02)

## Conclusion 


**Les exemples ont-ils fonctionné comme prévu ?**

Oui, les exemples ont généralement fonctionné comme prévu. Les méthodes redéfinies dans les sous-classes `Manager` et `Developer` ont affiché les messages spécifiques attendus lorsqu'elles ont été appelées. L'utilisation de `self` et `super` a permis de gérer correctement l'héritage et le dispatch des messages.

**Quelle différence y avait-il entre ce que vous attendiez et ce que vous avez observé en réalité ?**

Dans certains cas, la gestion de `self` et `super` a révélé des nuances inattendues. Par exemple, lorsque `self` est utilisé, il fait référence à l'objet actuel et appelle la méthode appropriée dans la classe de cet objet, ce qui peut différer du comportement prévu si la hiérarchie des classes est complexe. D'autre part, `super` appelle la méthode de la classe parente, ce qui peut parfois donner des résultats différents si les méthodes dans les sous-classes ne sont pas correctement redéfinies.

**Comment pouvez-vous corriger vos hypothèses et comment avez-vous trouvé ces informations ?**

Pour corriger les hypothèses, il est important de vérifier les méthodes redéfinies dans chaque classe et de tester différentes situations d'héritage pour comprendre comment `self` et `super` interagissent. La documentation de Pharo et les résultats des tests pratiques ont été cruciaux pour ajuster les attentes. Les exemples pratiques et les lectures sur la gestion des messages en Pharo ont aidé à clarifier ces concepts.

---

# Salas Merzouk


Dans cet exercice, j'ai exploré le mécanisme de dispatch de messages en Pharo, en travaillant avec l'héritage et la redéfinition de méthodes. Je vais expliquer le code que j'ai implémenté, et les résultats réels observés lors de l'exécution.

J'ai commencé par définir deux classes : Chien et sa sous-classe Pitbull. Le but était d'analyser le fonctionnement du dispatch de méthodes lorsqu'on invoque des méthodes provenant de la classe parent et de la classe enfant.

## Classe Chien
J’ai créé une classe appelée Chien :


```smalltalk
Object << #Chien
    slots: { 'nom' };
    package: 'Test_dispach'.      
```    


La méthode `aboie` renvoie la chaîne de caractères "Le chien aboie" :

```smalltalk
aboie
    ^ 'Le chien aboie'.   
```    

## Classe Pitbull
La classe Pitbull est une sous-classe de Chien :

```smalltalk
Chien << #Pitbull
    slots: {};
    package: 'Test_dispach'.
```    

Elle redéfinit la méthode `aboie` pour retourner `"Le pitbull aboie"` :

```smalltalk
aboie
    ^ 'Le pitbull aboie'.
```    


Une nouvelle méthode `sAboie` utilise le mot-clé super pour appeler la méthode `aboie` de la classe parent :
sAboie

```smalltalk
sAboie
    ^ super aboie.
```    

## Test des instances
J’ai ensuite créé une instance de Chien (c) et une instance de Pitbull (d), afin de tester le comportement des méthodes dans les deux classes :

```smalltalk
c := Chien new.
c aboie.

d := Pitbull new.
d aboie.

d sAboie.
```


## Résultats obtenus
- `c aboie` a renvoyé : `"Le chien aboie"`, comme prévu.
- `d aboie` a renvoyé : `"Le pitbull aboie"`, conforme aux attentes.
- `d sAboie` a bien invoqué la méthode de la classe parent `Chien` et a renvoyé : `"Le chien aboie"`, ce qui correspond exactement à mes attentes.

## Analyse des résultats
Les résultats ont parfaitement correspondu à ce que j'avais prévu. Le mécanisme de dispatch de messages suit une logique claire et intuitive : lorsqu'une méthode est redéfinie dans une sous-classe, celle-ci est utilisée, mais en appelant super, la méthode parent est correctement invoquée.

## Conclusion
Cet exercice m'a permis de mieux comprendre comment fonctionne le dispatch de messages et la redéfinition de méthodes. Il confirme que ce mécanisme suit les principes classiques de la programmation orientée objet pour l'héritage et l'invocation des méthodes via le mot-clé super.

En résumé, les comportements observés correspondaient à mes attentes, et je suis maintenant plus à l'aise avec le concept de dispatch de messages.

----
# André Carneiro A Santana Filho

- Sources used:
  - https://youtu.be/6-xJbCPLSng?si=-RVa4KXVo9Mg4Uq4
  - http://rmod-pharo-mooc.lille.inria.fr/AdvancedDesignMooc/Slides/M1-1-Essence-01-NotExample.pdf
  - http://rmod-pharo-mooc.lille.inria.fr/AdvancedDesignMooc/Slides/M1-2-Essence-02-Dispatch.pdf

## Introduction

Message Dispatch in Pharo is a concept which is not far away from heritage in some other Object-Oriented languages. Being defined as a away to tell an object how to interpret when a method is called, in which the object sends a "message" to its class and its predefined behaviours may change the end result replied by the object itself.

Let's say, for instance, that we're having a big election coming through! In Brazil, the mayor and the city council happen at the same day, in which the voters may have to write in the same ballot the votes for their preferred concilours and mayor. Brazilian ballots work with numbers instead of names, so every voter needs to memorize the digits for each candidate; mayoral candidates have codes comprised of 2 digits, whilst city councilers have digits comprised of 5 digits.

How can we use Pharo to deal with such cases to make it able for the voters to use an electronic voting machine?

## The Challenge

First of all, a good call would be to create a class that relates to all candidates, indenpendently of their position, therefore we should create our "main" class, simply called "Candidate"

```pharo

Object subclass: Candidate [
    Candidate>>number [
        ^ 'I tried to key to you...'
    ]

    Candidate>>announceNumber [
        Transcript show: 'My number is: ', self number; cr.
    ]
]
```
In this class, we can see that the method "announceNumber" would, initially, call the self-included "number" method. However, by creating a "Candidate" object and telling it to announce its number, we'd get the following result.

```Pharo
My number is: I tried to get to you...
```
Which is very bleak and dark, just like a Joy Division song! This is due to the fact that this class is not really looking forward to show numbers.

Now, we need to create a new class, which overrides the method "number", so that when we call it to announce its number for good, it actually shows a valid number!

```Pharo
Candidate subclass: MayorCandidate [
    MayoCandidater>>number [
        ^ '99'
    ]
]
```

Now by creating a "fulano" object, we get, finally, a candidate saying a valid code for themself!
```Pharo
My number is: 99
```

Finally, just repeating the same logic for City Councilor, we can make the following class, also by overriting the "number" class

```Pharo
Candidate subclass: CityCouncilorCandidate [
    CityCouncilorCandidate>>number [
        ^ '88888'
    ]
]
```

And, by creating an object called "ciclano", which is a city council candidate and asking them to say their code, we get the following result.

```Pharo
My number is: 88888
```
## Analysing results

The results were pretty much what I expected, a little step that I wasn't able to take was to make the candidate number inputted by the object when created, but using some sort of character limit constraint, but so far as the logic related to super and self goes, everything seems very understandable, as does the Message Dispatch mechanisms.