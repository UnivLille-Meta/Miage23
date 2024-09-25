JOELLE SECTION
----------------------------------------------
Objets vs. Données :

J'ai regardé la vidéo qui explique la différence entre les objets et les données. J'ai compris que les objets encapsulent à la fois les données et le comportement, tandis que les données sont des éléments bruts sans comportement attaché.

De global à paramètre :
``` pharo
changerVitesse: uneVitesse [
    ^ uneVitesse + 10.
]

| vitesse nouvelleVitesse |
vitesse := 60.
nouvelleVitesse := self changerVitesse: vitesse.
nouvelleVitesse.

```

J'ai essayé comment transformer des variables globales en paramètres pour améliorer l'encapsulation. En passant les variables comme paramètres, le code devient plus flexible et plus facile à tester.

## KATAS
J'ai choisis de programmer le kata: Fix pawn moves!
Les pions ont des règles de déplacement spécifiques : avancée d'une case, deux cases pour le premier mouvement, capture en diagonale.
Pour comprendre le fonctionnement de la pion, j'ai essayé de tester chaque type de mouvement.
Résultat: j'ai eu du mal à trouver les classes et les méthodes correspondant pour implémenter les tests.
