## Document de Conception du Jeu 2048


 # De quoi parle le jeu, quel est son objectif?
Le jeu 2048 est un jeu de puzzle où le joueur déplace des blocs sur un plateau, généralement de 4x4 cases, en utilisant les touches fléchées. L'objectif est de combiner des blocs de mêmes valeurs pour les fusionner et créer un nouveau bloc avec une valeur double. Le joueur gagne lorsqu'un bloc atteint la valeur de 2048, mais le jeu peut continuer pour atteindre un score plus élevé.


#  Quels types d'objets y a-t-il?

    Conception actuelle : 

        Canvas (Grille): La zone de jeu où les blocs sont déplacés.
        Bloc: Représente un bloc avec une valeur numérique.
              vide: Une case sans bloc.
              avec valeur: Une case contenant un bloc avec une valeur numérique
        Move (Mouvement): Une action pour déplacer les blocs dans une direction spécifiée.
        Merge (Fusion): L'action de combiner deux blocs de même valeur.
        Spawn (Apparition): Le processus par lequel un nouveau bloc apparaît sur la grille.

#  Quelles sont les interactions du jeu?

Lorsque le joueur appuie sur une touche fléchée, tous les blocs se déplacent dans cette direction jusqu'à ce qu'ils touchent le bord du canvas ou un autre bloc.
Si deux blocs de même valeur sont adjacents dans la direction du mouvement, ils fusionnent pour former un bloc de valeur double.
Après chaque mouvement, un nouveau bloc apparaît aléatoirement sur une case vide avec une valeur initiale (généralement 2 ou 4).