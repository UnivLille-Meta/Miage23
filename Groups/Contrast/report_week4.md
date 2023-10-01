# Gabriella -----

Cette semaine, nous avons abordé une des notions importantes du cours, le double dispatch.
De ce que j’ai compris, le double dispatch permet réellement d’utiliser le principe du “Don’t tell, ask”. Il permet d’éviter les "if". Avec la manière dont on a appris à coder, on a plus tendance à poser des questions en utilisant des "if" en codant; ce qui, des fois, rallonge beaucoup le nombre de lignes de code.
J’ai vu que le double dispatch permet de passer d'un code de plusieurs lignes de “if” assez complexe à comprendre à un code plus simple à maintenir et plus facile à comprendre.

Concernant le projet AVL, ma démarche pour l’ aborder a été la suivante: j’ai d’abord commencé par lire le readme du projet. Contrairement au projet Artefact qui a un readme et un guide assez structuré, montrant les cas d’usages de ce projet et expliquantnles éléments importants du code, le readme du projet AVL est un peu court et ne donne pas le contexte global du projet et son utilité par rapport aux AVL.
Pour analyser le code du projet, j’ai essayé d’adopter une approche systématique :
* Ouverture des packages un par un.
* Examen des classes, noms de méthodes et commentaires.

### Préparation de la présentation:
J’ai commencé à aborder le projet Artefact pendant que Axel avançait sur AVL et que Nouha se renseignait sur le Mutation Testing.
Le projet Artefact est assez grand. J’étais un peu perdu au début en ne sachant pas trop où regarder et sur quoi me concentrer. J’essaie actuellement de l’aborder pas à pas et d’utiliser le reverse engineering en n'essayant pas de tout comprendre en une fois mais en essayant plutôt de cibler les classes importantes et de me concentrer sur celles-ci.


### Points sur lesquels je vais travailler:
* Dans la suite de cette semaine, je vais continuer de travailler sur le projet Artefact .

* J’ai remarqué que je comprenais plus facilement avec les vidéos du MOOC. Elles expliquent chaque notion du cours et vont même au-delà d’une manière assez accessible. Je vais essayer de regarder s’il y en a sur le mutation testing que je trouve ne pas avoir bien compris.


# Axel -----

  Cours sur le double dispatch déjà vu en META pour ma part. Cependant le rappel était bien venu. Dans l'exemple du Pierre-feuille-ciseaux, instinctivement j'aurai cherché le polymorphisme dans les arguments:



( vs: aRock / vs: aPaper / vs: aScissors )



Pour permettre à un appel `vs:` de pouvoir identifier par type le comportement. Mais grâce au rappel durant ce cours, j'ai pu corriger ma logique et plutôt faire un réel "ping pong" du 'double'-dispatch, avec un appel personnalisé dans le receveur du message `vs:`



Puis on a intégré Nouha à notre groupe. On a discuté ensemble de la marche à suivre pour être efficace et ne pas se marcher dessus. J'ai continué le rapport général d'AVL, Nouha s'est renseignée sur drTest & le mutation testing au sens technique et Gabriella a commencé à s confronter à Artefact, pour que le lendemain, en dehors des cours, nous mettions nos réflexions en commun et améliorions les travaux de chacun.



Nous étions un peu perdus dans les découvertes des deux projets, mais je dirai (de mon point de vue subjectif) qu'aujourd'hui ce qui nous a le plus aidé ça a été la discussion. En "interne", ça nous a permis d'être plus au clair et de centraliser. Et en "externe", pouvoir avoir le point de vue/angle d'attaque d'autres groupes nous a permis de mieux comprendre et pouvoir avoir plus de recul sur notre analyse, pour mieux s'y réattaquer


# Nouha -----

 This week's lectures and exercises are mainly focused about mutation testing and its effeciency along with the introduction to a new concept  we learned in class: double dispatch

 Major ideas I got going through week 4 exercises:

- when running coverage for Network-UUID, we find 81.25% of code coverage
- we could increase test coverage by writing additional test cases to ensure that various code paths and scenarios are tested thoroughly
- Code coverage is a very beneficial proxy for code and test quality but it’s limited because the massive  quantity of the tests doesn’t imply their high quality. It's possible to have a large number of low-quality tests that achieve high coverage but do not effectively catch bugs or provide meaningful validation.
- To bridge the gap between mutation score and coverage percentage, we could prioritize testing for high-impact mutations that are likely to uncover real defects.
- When thinking about test quality, I find mutation testing more precise than code coverage as it directly assesses the ability of tests to detect defects by introducing artificial faults into the code.
- Both analyses are useful, but they serve different purposes, with mutation testing providing a more direct assessment of test quality by evaluating their effectiveness in defect detection, while code coverage measures the extent of code exercised by tests but does not directly assess defect-detection precision, making them complementary rather than interchangeable.
- On Improving mutation analysis runtime, I tried with AVLTree classes and we can notice a tiny example of the diffrence in the pictures below

![](pictures/AVL%20mutationTest%20all.png)

![](pictures/AVL%20mutationTest%20Selecting.png)


- we can consider AVL project well tested since out of the 17 mutatants, the four alive recommand to remove ^ in some methods, which is not a big deal. Also, the coverage is 89.89% . More details are on AVL analysis report

In terms of Double Dispatch, I find the example we've seen in class; rock, paper, scissors  very explicit to introduce the double depandacy that a method can have, the reciever object and the argument, which allows more flexibility and dynamism on methods.  
