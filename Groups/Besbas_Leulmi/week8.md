# Rapport 8 : 

Voici le lien de notre depot pour le projet BOMBERMAN : https://github.com/naysparrow/Besbas_Leulmi_Bomberman

## Mélik : 

J'ai essayé de prendre de l'avance sur le cours en regardant les slides sur le double dispatch du week7 et week8 et du visitor afin de preparer la seance.

L'utilistation de l'exemple pierre feuille ciseau me parle d'autant plus car cela me rappel le projet que j'ai eu à faire en JSFS lors de ma L3 et je me rend compte que j'aurai tout simplement pu utiliser ce design pattern au lieu de mettre des tonnes de If.

En résumé, j'ai compris que le mécanisme de double dispatch permet une conception modulaire en envoyant deux messages pour déterminer la méthode en fonction à la fois du receveur et de l'argument. L'implémentation favorise l'extensibilité sans la nécessité de modifier le code existant.

On le comprend davantage aussi dans les slides "AddingNumbers" grâce aux exemples :

### Exemple 1 : 

Ajout d'entiers et de flottants :

    Les classes impliquées sont Integer et Float.
    Deux méthodes + sont définies, une dans chaque classe.
    L'idée est d'envoyer un message sumWithInteger: depuis la classe Integer et sumWithFloat: depuis la classe Float.
    Les méthodes sumWithInteger: et sumWithFloat: effectuent l'addition appropriée.

J'ai pu bien comprendre l'importance du double dispatch qui est un mécanisme central dans le design pattern Visitor, qui permet de réaliser des opérations sans utiliser de vérifications conditionnelles.

Je ne voyais pas trop l'inconvenient du visitor mais j'ai cru comprendre qu'il est moins adapté aux structures d'objets changeantes.

## Mohamed : 

nous avons continuer a coder le jeux , j'ai eut du mal avec les differentes frameworks même en utulisant l'image donné sur discord. 
j'ai donc continuer mon uml en ayant toute mes disigns pattern et avoir une structure du code cohérente et optimisé.

a faire : 
reussir a utiliser bloc et myg.
