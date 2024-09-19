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

![Diagramme Hiérarchique en Détail]((https://github.com/mrdedede/Miage23/blob/6aa1a3cd6511d999fe3e11b8122b8b742b5dff15/Groups/G09/image-week-2/Diagramme.PNG))
_Figure 1 : Diagramme Hiérarchique en Détail._

## Résultats Affichés

![Résultats d'Exécution](https://github.com/mrdedede/Miage23/blob/4a059560a0b2209c8861ec94dabe21569c6f2212/Groups/G09/image-week-2/resultat.PNG)
_Figure 2 : Résultats d'Exécution._

- [Lien vers le code sur GitHub](https://github.com/salim2607/MyCounter/tree/master/src/weeak-02)

## conclusion 


**Les exemples ont-ils fonctionné comme prévu ?**

Oui, les exemples ont généralement fonctionné comme prévu. Les méthodes redéfinies dans les sous-classes `Manager` et `Developer` ont affiché les messages spécifiques attendus lorsqu'elles ont été appelées. L'utilisation de `self` et `super` a permis de gérer correctement l'héritage et le dispatch des messages.

**Quelle différence y avait-il entre ce que vous attendiez et ce que vous avez observé en réalité ?**

Dans certains cas, la gestion de `self` et `super` a révélé des nuances inattendues. Par exemple, lorsque `self` est utilisé, il fait référence à l'objet actuel et appelle la méthode appropriée dans la classe de cet objet, ce qui peut différer du comportement prévu si la hiérarchie des classes est complexe. D'autre part, `super` appelle la méthode de la classe parente, ce qui peut parfois donner des résultats différents si les méthodes dans les sous-classes ne sont pas correctement redéfinies.

**Comment pouvez-vous corriger vos hypothèses et comment avez-vous trouvé ces informations ?**

Pour corriger les hypothèses, il est important de vérifier les méthodes redéfinies dans chaque classe et de tester différentes situations d'héritage pour comprendre comment `self` et `super` interagissent. La documentation de Pharo et les résultats des tests pratiques ont été cruciaux pour ajuster les attentes. Les exemples pratiques et les lectures sur la gestion des messages en Pharo ont aidé à clarifier ces concepts.
