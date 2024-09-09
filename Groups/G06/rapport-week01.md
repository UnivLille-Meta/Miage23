Mohamed Yassine Aloui Section 
Après avoir lu des documents PDF et regardé des vidéos, j'ai appris la syntaxe de Pharo (les classes, les objets, les messages). En Pharo, tout est un objet, ou bien un message envoyé à un objet. Pour exécuter une méthode, on envoie un message à cet objet.

Les types de messages sont :

Les messages unaires (par exemple : objet message).
Les messages binaires (par exemple : objet + autreObjet).
Les messages à mot-clé (par exemple : objet message: paramètre).
Collections en Pharo
Une collection est un ensemble d'objets. C'est comme une liste qui stocke des objets et offre différents messages (équivalents des méthodes en Java) pour ajouter, supprimer et accéder aux éléments de la collection. 
En Pharo, on peut utiliser les conditions avec ifTrue: et ifFalse: en combinant des blocs de code []. Cela signifie que l'on teste une valeur dans une ligne précédente, puis on applique la condition. Contrairement à d'autres langages de programmation, on ne peut pas placer une condition directement devant if, comme dans les syntaxes plus traditionnelles. 

Exemples de Code Violant les Règles

 'une des bonnes pratiques en Pharo est d'éviter les méthodes longues et celles qui visent à produire plusieurs résultats différents. Il est également recommandé d'éviter d'écrire tout le code sur une seule ligne, afin de garder une lisibilité et une maintenabilité plus faciles
  
Après on a suivi les exercises de pdf
1.	Création de classe et méthode et d'une classe de test pour tester l'implémentation d'un code qui sert à incrémenter et décrémenter un compteur.
2.	Création de la classe Counter.
3.	Ajout des méthodes get & set avec la syntaxe de Pharo (count, count:).
4.	Implémentation de la classe de test.
5.	Implémentation d'une méthode pour tester la fonction increment.
6.	Implémentation des fonctions increment et decrement.
7.	Définition d'une méthode de test dans la classe de test pour tester la fonction decrement.
8.	Enregistrement du travail dans Iceberg avant de le push vers GitHub.
 
 

Les cascade

Elles permettent d'envoyer plusieurs messages à un même objet sans avoir à le répéter ce qui rend le code plus compact et souvent plus lisible..

XTDD
1)création de class de test 
le principe de XTTD est de fixer et corriger les erreurs de déclaration dans le test (classe ou méthode de classe ou attribut) en utilisant le débogueur. Et du coup on est sur que la nouvelle classe créer et ses méthodes et attributs et l’implémentation de code est correcte , ce qu’on appelle Le développement piloté par les tests et en utilisant le débogueur.

 
 
En suivant la vidéo j’ai
  
  
  
  

