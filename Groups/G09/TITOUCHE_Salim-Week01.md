
# TITOUCHE Slim 

# Collections dans Pharo et leurs itérateurs

## Qu'est-ce qu'une collection et à quoi sert-elle ?

Une collection est un concept plus général qu'un tableau. C'est un objet qui fait référence à un nombre arbitraire d'autres objets, appelés les éléments de la collection. Pharo propose plusieurs types de collections (ordonnées ou non) qui définissent différentes façons d'accéder aux éléments, comme `Array`, `Set`, `Dictionary`, `OrderedCollection`, etc.

## Quels types de collections la bibliothèque standard de Pharo propose-t-elle ?

La bibliothèque standard de Pharo offre plusieurs types de collections, notamment :

- `Array` : tableaux
- `Set` : ensembles
- `Dictionary` : associations clé-valeur (dictionnaires)
- `OrderedCollection` : collections ordonnées
- `SortedCollection` : collections triées

![collection](/collection.png)

Source de l'image : [Mooc](http://rmod-pharo-mooc.lille.inria.fr/OOPMooc/02-Syntax/W2S10-Iterators.pdf)

## Comment itérer sur les collections et quelles sont les différences entre elles ?

En Pharo, les collections peuvent être parcourues grâce à des méthodes spécifiques, telles que :

- `do:` : pour itérer sur chaque élément
- `collect:` : pour itérer et collecter les résultats
- `select:` : pour sélectionner les éléments correspondants à un critère
- `reject:` : pour rejeter les éléments correspondant à un critère
- `detect:` : pour trouver le premier élément correspondant
- `detect:ifNone:` : pour trouver le premier élément correspondant ou retourner une valeur par défaut
- `includes:` : pour tester l'inclusion d'un élément

## Exemple d'itération  :


#(1 2 3 4) do: [:each | Transcript show: each. ].

## Comment as-tu trouvé ces informations ?

Ces informations proviennent de plusieurs sources, notamment la documentation officielle de Pharo, des explorations dans l’IDE Pharo, ainsi que des tutoriels en ligne.

# Conditionnelles dans Pharo
## Comment écrire des conditionnelles dans Pharo ?
En Pharo, les conditionnelles sont écrites avec des blocs et des messages. Exemples :

| a b |
a := 5.
b := 9.
(a > b)
    ifTrue: [ Transcript show: 'a est plus grand que b'; cr. ]
    ifFalse: [ Transcript show: 'a est plus petit ou égal à b'; cr. ].

# Quelle différence avec d'autres langages ?
Pharo utilise une syntaxe basée sur l’envoi de messages plutôt que des mots-clés traditionnels comme if et else dans d'autres langages. Cela crée une approche plus cohérente dans la structure du langage.

# Avantages et inconvénients ?

**Avantage** : Uniformité syntaxique, car tout est un message, ce qui rend Pharo extrêmement flexible.  
**Inconvénient** : Cette approche peut être déroutante pour les nouveaux utilisateurs du langage.

## Sources des informations

Ces informations proviennent de la documentation officielle de Pharo ainsi que de tests réalisés dans l'IDE Pharo.

# Création de Classes et Méthodes en Pharo

## Utilisation de l’IDE pour Créer des Classes et des Méthodes

1. **Ouvrir l’IDE de Pharo** : Lancez l'environnement de développement Pharo.
2. **Accéder au Browser** : Le Browser est l'outil principal pour naviguer dans les classes, les méthodes et les objets. Vous pouvez l’ouvrir en sélectionnant "Browser" dans le menu principal ou en utilisant le raccourci clavier.
3. **Créer une Nouvelle Classe** : Pour créer une nouvelle classe, utilisez le Browser pour définir une sous-classe d'une classe existante. Assurez-vous que le nom de la classe commence par une majuscule.
4. **Ajouter des Méthodes** : Pour ajouter une méthode à une classe, vous devez modifier le code de la classe dans le Browser. Vous pouvez créer une nouvelle méthode simplement en ajoutant un nouveau bloc de code avec le nom de la méthode. Les noms des méthodes commencent généralement par une minuscule.

## Exemple de Programme Simple en Pharo

Voici un exemple pour créer une classe `FactorialCalculator` avec une méthode `factorial` :

factorial
    salfe = 0 ifTrue: [^1].
    salfe > 0 ifTrue: [^salfe * ((salfe - 1) factorial)].
    self error: 'Not valid for negative integers'.




# lien GitHub
[GitHub](https://github.com/salim2607/MyCounter)


## Style de codage Pharo

### Règles courantes

- Les méthodes doivent être petites, lisibles et contenir un seul objectif.
- Utilisation de noms clairs pour les variables et les méthodes.

### Outils pour vérifier les violations

- Des outils comme SmallLint sont intégrés à l’IDE pour signaler les violations de style.

### Exemples de code violant les règles

#### Exemple de Code Violant les Règles de Style

 
Object subclass: MyClass [
    MyClass >> aMethod [
        | x y z |
        x := 10.
        y := 20.
        z := x + y.
        Transcript show: 'The result is ', z printString; cr.
    ]
]

#### Violations dans cet Exemple

- **Méthode Longue et Non Lisible** : La méthode `aMethod` contient plusieurs lignes de code qui pourraient être divisées en méthodes plus petites pour améliorer la lisibilité et la clarté. Par exemple, l'affichage du résultat pourrait être extrait dans une méthode distincte.

- **Noms Non Descriptifs** : Les noms des variables `x`, `y`, et `z` ne sont pas descriptifs et ne donnent pas d'indication sur leur usage. Il est préférable d'utiliser des noms plus significatifs pour rendre le code plus compréhensible.


# Extras : Cascades et Block Closures

## Comment as-tu abordé les cascades et block closures ?

Les cascades permettent d'envoyer plusieurs messages à un même objet dans une seule expression. Par exemple :

myObject doSomething; doSomethingElse; doAnotherThing.

Les block closures sont des blocs de code qui peuvent être passés comme arguments. Par exemple :

[:x | x * x].

## As-tu posé des questions sur les canaux Discord ou les listes de diffusion ?

Non, je n'en ai pas eu besoin pour le moment, mais je pense que je vais le faire prochainement.