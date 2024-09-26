## DASSI-Helyana

# WEEK 3 :

## HOMEWORK : 

### Objects vs. Data

Objet : On peut y stocker des valeurs mais aussi on peut les manipuler. "L'objet encapsule la logique et laisse le client réutiliser cette logique"

Data : Un ensemble de données  

encapsulation : on regroupe les données (attributs) et les comportements(méthodes) d'un objet au sein d'une classe. ce qui permet de soit protéger nos données ou de le utiliser à l'exterieur de la classe avc les bonnes méthodes.  (public ou getter/setter)

Poor API vs Good API
-Une Poor API expose les données et n'offre pas de logique d'encapsulation. = strict minimum 

comme on peut voir sur la diapo de l'image : 
Chaque user qui utilise l'objet point implémente sa propre version de "degrees" ce qui montre que 2 users peuvent avoir le même code. 
L'objet point ne fournis que les méthodes de base et oublie dautre compportement utiles c'est pq les users les rajoutes eux même.

- Une Good API fournit tout les comportements nécessaires.

Sur la diapo les users n'ont pas besoin de recréer des comportements car ils sont déjà diponibles.
ce qui évite la duplicatoin de code.

### ABout global variables

Les variables globales sont partagées globalement, donc accessibles de partout ce qui peut signifier que bcp de partie du code peuvent dépendre de ces variables pour fonctionner = difficile de tester. 
De même pour les singletons. 

A préferer : 
chaque objet doit avoir accès a ce dont il a besoin pour fonctionner plutôt que d'utilise des é disponibles pour tout le monde. 

### Global to parameter

Eviter les variables globales car tjrs le même pb : 
A préferer : 
 utiliser des variables d'instances avc des paramètres  


## Extras about language

**SUPER** : 
self se réfère toujours au receveur de la méthode en cours d'exécution. super se réfère aussi au receveur de la méthode en cours, mais quand on envoie un message à super, la recherche de méthode change en démarrant de la super-classe relative à la classe contenant la méthode qui utilise super.  

Super est statique et se réfère toujours à la superclasse tandis que self est dynamique.

### Really Understanding Class Methods

 ""Méthode d'instance : Elle est appelée sur un objet.
Méthode de classe : Elle est appelée sur la classe.""

il existe une seule méthode de recherche pour les méthodes d'instance et les méthodes de classe = **le processus de recherche est identique.** 

LOrsque j'appelle la méthode à un objet, la recherche commence dans la classe de cet objet, si on trouve la méthode dans cette classe on l'execute sinon on recherche dans la super classe et ainsi de suite jusqu'à la trouver. 

**Envoie de message**
1) on recherche la méthode correspondant au message 
2) la méthode est executer sur l"objet recepteur

**Envoie de message à une classe**
1) on recherche dans cette classe
2) sinon on recherche en remontant les classes jusqu'on trouve la méthode


**Une classe est une instance d'une autre classe on l'appelle métaclasse**

en pharo tout est objet meme les classes c'est pour ça qu'elles peuvent recevoir des messages.

### exemple

Prenons l'exemple de véhicules avec des sous classes comme voiture ou vélos :

on créer notre classe mère Vehicule : 

```
Vehicle
	slots: { #couleur };
	package: 'Route'
```

on créer donc une méthode pour initialiser la couleur : 
```
initialize
    couleur := 'rouge'
```

ENsuite on créer la méthode qui va créer et initialiser la nvl instance de véhicule comme vu en cours :
```
Vehicule class >> new
    | inst |
    inst := super new.
    inst initialize.
    ^ inst
```
( point cours : 
inst = l'instance quon créer de la classe Vehicule
super = c'est la ref à la superclasse de Vehicule 
super new = on creer linstance avant de l'init) 

Ensuite on crée les sous classes : 
```
Object subclass << #Voiture
	slots: { #marque };
	package: 'Route'
```

On init : 
```
initialize
    super initialize.
    marque := 'Porsche '.
```

et ensuite on peux tester : 

```
| voiture |  (on crer notre variable)
voiture := Voiture new. (ici notre instance de voiture  et new est trouve dans la classe mere ca elle ne trouve pas dans voiture)
 
```


### Project milestone 1 


Choix KATA :  

J'ai choisis de prendre la kata : Remove nil checks qui permettra l'amelioration de code en utilisant le polymorphisme( méthode qui peut avoir plusieurs comportements selon l'objet sur lequel elle est appelée) .  