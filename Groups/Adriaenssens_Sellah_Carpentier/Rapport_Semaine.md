# Rapport 1 :
#### Madeline
Lors de ce 1er cour de C3P, j'ai révisé les bases de pharo comme j'ai fait META l'année dernière. J'ai fini le TP sur le compteur. Le cour m'a permis de revoir le TDD (Test Driver Development/Design).
Le TDD consiste à faire les tests en 1er, prioriser les interfaces à l'implémentation et tester permet d'avoir des spec exécutables. J'ai également essayé de mettre ce que j'ai fait sur git mais je n'ai pas réussi.  

#### Elisa 
- Rappels de la syntaxe de base de Pharo
- Mise en place environnement de travail 
- Exercice terminé lien : https://github.com/Elisa2502/Pharo_TP
- Le projet ne veut pas être push sur mon github

#### Rabah
- Pendant la premiere seance, j'ai revue les notions de base de pharo ( creation de package, classes, méthodes, tests, variable ... ) aprés installation de l'envirenement de travail, j'ai travaillé sur le premier tp du compteur, avec les tests qui verifiant le code. 

# Rapport 2 : 
#### Madeline
 - **Heritage**
 - Encapsulation
 - Polymorphisme
 - **Method Lookup**
 - static Binding
 - Abstraction

Objects : On applique les opérations dessus
Late Binding : Rend les languages objets très fléxibles
. : invocation de méthode = message send
Surcharge : Mélange le static et le late Binding
**Tell don't ask** : Dit ce que tu veux ne demande pas, fais quelques chose pour ça il faut envoyer le message
**Polymorphisme** : Pouvoir utiliser de maniére semblable 2 objet différents. Minimum de classe : 3 (1 mere 2 fille)
**Heritage** : Savoir comment marche l'état(attribut) et les comportement(methode) ?
**self** : receveur du message
**super** : on démarre  la recherche à la classe super de la classe super

**Dispatch = Envoyer**
Boolean = object
**self == super = true c'est le même objet c'est le lookup qui change**

Message send -> methode lookup à partir de l'instance -> trouve methode -> execute methode 

#### Elisa
- Rappels sur les objets *self* et *super*
- Rappels sur le *look up*
- Présentation des projets
- Organisation du groupe
- Importation du projet AVL et début du rapport d'observations


#### Rabah 

- Refresh sur les Boolean et comment sont codé leur méthode
- Rappel sur 'this' et 'super' dans l'heritage, 
- Modelisation des objets Boolean
- revision generale sur la programmation orienté objet ( polymorphisme, heritage, LOOKUP,LATEBINDING)
- adhesion au github de trinome .
- debut sur le projet de AVL.

# Rapport 3 :
#### Madeline
 - Explication de comment rechercher l'information dans un projet inconnue
   - Il faut comprendre à quoi sert le projet et comment l'utiliser
   - Pour ça on se concentre sur : la/les classe.s principale.s, les méthodes les plus utiles, les tests
   - Toujours lire la doc
   - On peut chercher des informations pour confirmer la doc
   - Et on fais abstraction du reste jusqu'a ce qu'on en ai besoins, on fais abstraction des détail que l'on ne comprend pas, on ignore les details complexes
   - On fais : regarder dans l'ensemble -> Utilisation -> Implementation sur le sujet principale
- Explication de comment faire de bon tests, l'importance des tests, explication de comment faire des mutants et vérifier le coverage avec pharo
   - Le coverage, qui permet de voir combien de code est couvert/testé
   - Les mutants servent à savoir si les tests sont pertinants
   - Il est plus simple de faire des tests quand on a trouver un bug que de faire des tests quand il n'y a pas de bug
   - Si les mutants survivent aux tests c'est qu'il manques des tests, si il meurt tous c'est que l'application est bien testé
   - Le score de mutation est le nombre de mutant tué sur le nombre de mutant totale
   - C'est 2 méthodes sont complémentaires

#### Elisa
- Comment rechercher les informations que l'on veut dans un projet et faire abstraction du reste
- L'importance des tests
- Travail sur le mutation testing
- Le test de coverage est important pour savoir la quantité de code testée mais les mutants servent à savoir si les tests sont corrects et pertinents. Ils sont donc complémentaires.
- Comment faire tourner le coverage et les mutants sur Pharo.

#### Rabah
- Pendant la troisième séance, j'ai découvert de nouvelles notions dans Pharo, notamment :

  - La recherche d'informations dans un projet inconnu.
  - Comment comprendre le but d'un projet et comment l'utiliser.
  - L'identification des classes principales, des méthodes essentielles et des tests associés.
  - La consultation de la documentation du projet.
  - L'importance de mettre de côté les détails complexes pour se concentrer sur l'essentiel.
  - Une introduction au concept de mutation testing, qui consiste à créer des mutants (variantes du code) pour vérifier si les tests sont corrects (on teste les tests 😂).
  - L'accent mis sur la création de tests de qualité et la combinaison intelligente du test de couverture et du mutation testing pour garantir la fiabilité de l'application.
 
# Rapport 4 :
#### Madeline
 - Cour double dispatch
 - Révision double dispatch
 - Travaille en autonomie
 - Lecture adding number + exercice adding number
 - Finir l'analyse d'artefact
 - Finir le diapo
 - Reviser l'oral en groupe

#### Elisa
- Cours double dispatch
- Pierre Feuille Ciseaux
- Travail en groupe sur AVL et Artefact
- Préparation de la présentation

#### Rabah
- Pendant la semaine 04, j'ai consacré plus de temps au projet AVL et Artefact. Cela m'a permis de réviser et
d'apprendre davantage de notions sur Pharo. De plus, j'en ai profité pour réviser les design patterns (double dispatch, visitor), préparer la présentation et l'oral avec mon groupe.

# Rapport 5 : 
#### Oral, retours : 
 - Pas d'uml du projet pour appuyer nos propos
 - Presentation trop générale
 - Approfondissement des tests
 - On aurait pu plus s'appuyer sur le code pour expliquer le visitor

# Rapport 6 : 
#### Madeline
- Null Pattern
- Clean code
- Message sends are hooks for subclasses
- Pas de duplication
- Emmental -> les sous classes doivent remplir les trous
- Utiliser les patterns au bon moment
- polymorphise

#### Elisa
- Rappels double dispatch
- Bonnes techniques de code / refractoring
- Bonnes utilisations des patterns pour simplifier le code
- Travail sur notre projet

#### Rabah
- Refresh double dispatch
- Les envois de messages
- Polymorphise
- Design pattern
- Travail sur le projet de Bomberman

#### Projet 
- On a choisi de faire un bomberman
- On a travaillé sur une conception de projet
- Nous sommes toujours à la recherche de notre conception idéale pour pouvoir démarrer le projet correctement
- Nous avons écrit différents UML à travers plusieurs réflexions de conception

Voici le lien de notre projet Bomberman : 
![Bomberman](https://github.com/Elisa2502/Bomberman)

On a fais un premier UML qui ne fonctionne pas :
   
![image1](./umlv1.png)



Et voici l'UML que nous trouvons mieux :  

![image2](./umlv2.png)

Pour le moment nous nous concentrons principalement sur les cases et sur la manière dont on représente le plateaux on verra par la suite le reste, nous essayons de réfléchir au mieux au code pour trouver des design pattern comme demandé. 


# Rapport 7 
Semaine sans cours  
Préparation examen  

# Rapport 8
#### Madeline
 - **Composite**
 - Element simple et composé sont polymorphique
 - Il y a un composant/feuille et des composés, on a une liste de composés
 - Moins modulable que le visiteur

 - **Visiteur**
 - Il fontionne très bien avec le composite
 - Permet de "vister" un objet pour étendre une structure de donnée
 - Ajout et modification de fonctionnalité, plus facile et rapide qu'avec le composite

#### Elisa
- Rappel du composite
- Explication du visiteur
- Le composite est moins modulable que le visiteur
  - Pour ajouter une fonctionnalité dans le composite, il faut ajouter une méthode dans chaque sous classe ou la classe mère
  - Alors que dans le visiteur, il faut créer une nouvelle classe qui impléémente visit_ avec les types de notre structure de données
- L'ajout et la modification de fonctionnalités est ainsi plus facile et plus rapide avec un visiteur

#### Rabah
- Polymorphique, Élément simple et composé.
- Comprend un composant/feuille et des composés.
- Le visiteur Permet d'élargir une structure de données en "visitant" un objet.
- L'ajout et la modification de fonctionnalités sont plus simples avec le visiteur.
- Il suffit de créer une nouvelle classe implémentant la méthode "visit_" pour chaque type de la structure de données.

#### Projet
 - Fais depot git
 - Se répartir les tâches
 - Commencer à coder
Nous avons encore une fois mis à jour l'UML : 
![image3](./umlv3.png)

# Rapport 9
#### Projet
 - Pour le back le modéle est fonctionnel, il faut que le joueur puisse se déplacer et généré un labyrinte parfait avec du sol et des murs
 - On a commencer les tests, il faudrait faire du tdd pour les prochaine deature
 - Pour le front on a un plateau, on cherche une solution pour le lier au back
 - Il faut continuer d'étudier le Sokoban

# Rapport 10

#### Madeline
 - Design Pattern Strategy
 - *Sous-Typage :  Permet d'heriter d'un objet pour être un. Definis un sous type, tout ce qui est compatible avec la super classe et compatible avec la sous classe. POur la spécialisation*
 - *Sous-classage : Permet d'herité afin de récupérer les méthodes de la super classe, on peut annuler des méthodes. Pour la réutilisation *
 - *Polymorphisme :  capacite des 2 objets à être interchangeable pour un client*
 - Partage
 - Extensibilité
 - Granularité du partage

#### Elisa
- Découverte du design pattern Strategy
- Différence entre sous-typage et sous-classage
  - sous-typage : c'est de la spécialisation
  - sous-classage : c'est de la réutilisation
- Etude de l'exam 1 et questions sur les mauvaises réponses
  - Attention, le polymorphisme peut exister sans héritage (c'est simplement une capacité d'interchanger des objets)
- Travail sur le projet  

#### Rabah
- Absence entreprise
  
#### Projet
- Implémentation du design pattern State
  - Modification des class existantes
  - Adaptation des méthodes
  - Adaptation des tests
- IHM mise à jour, plus ouverte à l'évolution
- Plateau implémenté d'une différente manière => On peut accéder aux cases du plateau
- Ajout d'un controleur et d'un main
- Mise à jour de l'uml qui combine le visiteur de la semaine dernière avec le state
 ![image4](./umlv4.png)
