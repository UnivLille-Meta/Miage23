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
