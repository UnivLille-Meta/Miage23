### KATAS choisis: 
- Refactor piece rendering (practice refactorings, double dispatch and table dispatch)
- Add pawn promotion (practice code understanding and debugging)
  
## PAWLOWSKI Florine 
### exercices 
En suivant les videos M1-1 j'ai vu comment implémenter |, or: et not en fonction des objets False et True qui héritent de Boolean, il faut créer des méthodes pour chaque classe True ou False en fonction des paramètres qu'on donne. 
Pour la partie lookup avec self et super, j'ai testé avec quelques implémentations de classes sur ce repo : https://github.com/PawlowskiFlo/C3P/tree/main/week2
self == super est vrai car pointe sur le même objet. 

### Homeworks 
J'ai fait les exercices sur le Dice qui sont aussi dans le package week2: 
https://github.com/PawlowskiFlo/C3P/tree/main/week2

ça m'a permis de comprendre plusieurs principes comme utiliser des classes externes à un package (ex avec Integer), mais aussi de mettre en pratique l'itération sur une collection, l'utilisation de l'opérateur + sur 2 objets qui ne sont pas forcément des nombres, faire des tests à répétition avec des nombres random et développer DSL. 

Pour le dispatch j'ai regardé les vidéos du mooc, mais pour mieux comprendre j'ai demandé à Julien Conoir qui avait fait META en option l'année dernière et qui m'a conseillée de faire la fiche d'exercice sur le dispatch pour mieux comprendre et qui reprend l'implémentation du Dice. 
J'ai donc mis en place quelques nouvelles méthodes pour le dispatch (voir repo week2). En fait ça permet de ne pas utiliser de conditions, en effet quand on a que quelques cas à traiter ce n'est pas génant (par exemple additioner un Die et un DieHandle) mais si on veut pouvoir additioner d'autres Objets le dispatch est bien plus pratique et orienté Objet (c'est l'objet qui a la responsabilité). C'est aussi intéressant en terme de lisibilité de code, ça permet de faire plusieurs méthodes plus simples et plus lisibles.  


## LIETARD Evann 

### exercices 
En suivant les vidéos M1-1 ainsi que les slide correspondent j'ai vu comment implémenter |, or: et not en fonction des objets False et True qui héritent de Boolean. 
J'ai codé le codes vu en cours ainsi que ajouté une serie de tests içi: https://github.com/EvannLietard/C3P/tree/main/Week2 dans le but de refarder le look up sur self et super.
Après avoir testé self == super sur le playground ceci renvoie true car cela pointe sur la même classe

### Homeworks

J'ai aussi codé l'exo de Dice içi: https://github.com/EvannLietard/C3P/tree/main/Week2

J'ai pu voir que l'envoi du message était envoyé à un objet pour que celui-ci effectue le comportement demandé.
Le langage utilise une résolution dynamique, c'est-à-dire que la méthode à exécuter est décidée au moment de l'exécution. Cela permet d'avoir des comportements potentiellement différents en fonction du type de l'objet. 
À travers nos exemples, nous avons pu voir que si la classe n'a pas les méthodes, Pharo va chercher dans les classes parentes. 
Enfin, si aucune méthode correspondante n'est trouvée, cela renverra une erreur.
Tout cela a été obtenu selon le cours de la semaine dernière ainsi que les diapositives de celui-ci.
