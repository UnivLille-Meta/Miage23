# Nouha

## Ce que j'ai fait:
Pour cette semaine, on a vu principalement comment différencier entre le sous-typage et le sous-classage. Ce que j'ai retenu:
- peu importe le type de binding du langage, que ce soit un langage type-checker ou pas ça ne met pas de différence au niveau du sous-typage. Notamment, parlant d'un langage type-checker comme Java, la vérification du type se fait en exécution et non pas en compilation.
- On utilise le sous-classe généralement quand on a besoin de réutiliser du code meme si il n y a pas une relation réelle entre l'api de la classe et la classe mère. Comme dans le cas de dictionnaire qui hérite de set. 
- Quand on utilise le sous-classage, on se trouve face à des problèmes de contradiction de la logique de quelques méthodes avec ce qu'on implémente, comme c'est le cas dans l'implémentation  d'une stack et la méthode removeFirst de l'orderedCollection. On se trouve obligés à redéfinir le résultat renvoyé par cette méthode, notamment, une erreur, ce qui n'est pas optimale
- En utilisant le sous-typage, on se trouve avec le même "vocabulaire" que la classe mère. C'est le cas de CountingStack qui hérite de stack.
- le sous-typage et le sous-classage ont le même méchanisme dans tout langage oop 
- On peut utiliser le sous-typage sans héritage.
- On déduit qu'il vaut mieux éviter l'utilisation du sous-classage 

On avance lentement mais sûrement sur le projet.

 ## Ce que je n'ai pas fait: 


## difficultés rencontrées:
