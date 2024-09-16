### KATAS choisis: 
- Refactor piece rendering (practice refactorings, double dispatch and table dispatch)
- Add pawn promotion (practice code understanding and debugging)
  
## PAWLOWSKI Florine 
### exercices 
En suivant les videos M1-1 j'ai vu comment implémenter |, or: et not en fonction des objets False et True qui héritent de Boolean. 
Pour la partie lookup avec self et super, j'ai testé avec quelques implémentations de classes sur ce repo : https://github.com/PawlowskiFlo/C3P/tree/main/week2
self == super est vrai car pointe sur le même objet. 

### Homeworks 



## LIETARD Evann 

### exercices 
En suivant les vidéos M1-1 ainsi que les slide correspondent j'ai vu comment implémenter |, or: et not en fonction des objets False et True qui héritent de Boolean. 
J'ai codé le codes vu en cours ainsi que ajouté une serie de tests içi: https://github.com/EvannLietard/C3P/tree/main/Week2 dans le but de refarder le look up sur self et super.
Après avoir testé self == super sur le playground ceci renvoie true car cela pointe sur la même classe

### Homeworks

Grâce au code vu en cours et recodé à : https://github.com/EvannLietard/C3P/tree/main/Week2

J'ai pu voir que l'envoi du message était envoyé à un objet pour que celui-ci effectue le comportement demandé.
Le langage utilise une résolution dynamique, c'est-à-dire que la méthode à exécuter est décidée au moment de l'exécution. Cela permet d'avoir des comportements potentiellement différents en fonction du type de l'objet. 
À travers nos exemples, nous avons pu voir que si la classe n'a pas les méthodes, Pharo va chercher dans les classes parentes. 
Enfin, si aucune méthode correspondante n'est trouvée, cela renverra une erreur.
Tout cela a été obtenu selon le cours de la semaine dernière ainsi que les diapositives de celui-ci.
