# Rapport 7 : 

## Mélik : 

J'ai essayé de prendre de l'avance sur le cours en regardant les slides sur le double dispatch afin de preparer la seance.

L'utilistation de l'exemple pierre feuille ciseau me parle d'autant plus car cela me rappel le projet que j'ai eu à faire en JSFS lors de ma L3 et je me rend compte que j'aurai tout simplement pu utiliser ce design pattern au lieu de mettre des tonnes de If.

En résumé, j'ai compris que le mécanisme de double dispatch permet une conception modulaire en envoyant deux messages pour déterminer la méthode en fonction à la fois du receveur et de l'argument. L'implémentation favorise l'extensibilité sans la nécessité de modifier le code existant.

On le comprend davantage aussi dans les slides "AddingNumbers" grâce aux exemples :

### Exemple 1 : 

Ajout d'entiers et de flottants :

    Les classes impliquées sont Integer et Float.
    Deux méthodes + sont définies, une dans chaque classe.
    L'idée est d'envoyer un message sumWithInteger: depuis la classe Integer et sumWithFloat: depuis la classe Float.
    Les méthodes sumWithInteger: et sumWithFloat: effectuent l'addition appropriée.

### Exemple 2 :

Ajout de fractions :

    La classe Fraction est introduite.
    Une méthode + est définie dans la classe Fraction.
    Deux nouvelles méthodes, sumWithInteger: et sumWithFraction:, sont introduites pour le double dispatch.
    Ces méthodes définissent le comportement d'addition avec des entiers et des fractions respectivement.
    
    Le double dispatch est utilisé pour choisir la bonne méthode en fonction du type des objets impliqués.

## Mohamed : 