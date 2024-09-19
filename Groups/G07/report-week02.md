# ZIANE CHAOUCHE LOUIZA


# Wassim ABOU DAHER



# Meryem EL ELKOURAICHI

## Qu'est-ce que le double dispatch ?
Le double dispatch permet à 2 objets de déterminer quel comportement utiliser, selon leur type respectif. </br>

Exemple concret en Pharo : </br>

On va créer une classe de base pour les animaux et une autre pour la nourriture. </br>

Ensuite on va créer les sous-classes `Cat` et `Dog`  pour les types spécifiques d'animaux et les sous-classes `Meat` et `Fish` pour les types de nourriture. </br>

On va implémenter la méthode `eat:` dans la classe `Animal`. L'animal ne sait pas comment manger cette nourriture, Il délègue donc cette tâche à la nourriture elle-même. C'est la première étape du double dispatch . </br> 

## étape 1 : 
```pharo
eat: aFood
    ^ aFood handleEatingBy: self.
```

Cela signifie que l’animal appelle la méthode handleEatingBy: sur la nourriture. L’animal passe lui-même (le chat ou le chien) en argument à cette méthode. </br>

## étape 2 : implémenter `handeEatingBy` dans la classe Food

Chaque type de nourriture va maintenant décider comment elle doit réagir en fonction du type d'animal qui essaye de la manger. C’est ici qu’intervient la deuxième étape du double dispatch. </br> 

Dans la classe `Meat` :

```pharo
 handleEatingBy: anAnimal
    ^ anAnimal eatMeat: self.
```

Dans la classe `Fish` : 

```pharo
 handleEatingBy: anAnimal
    ^ anAnimal eatFish: self.
```

Chaque type de nourriture appelle une méthode spécifique de l’animal en fonction de son type (par exemple, eatMeat: pour la viande). </br> 

## étape 3: implémenter les comportements spécifiques pour chaque animal : 

Dans la classe `Cat` :

```pharo
 eatMeat: aMeat
    ^ 'Le chat dévore la viande sauvagement'.
```
```pharo
 eatFish: aFish
    ^ 'Le chat mange du poisson doucement'.
```

Dans la classe `Dog` :

```pharo
 eatMeat: aMeat
    ^ 'Le chien dévore la viande sauvagement'.
```
```pharo
 eatFish: aFish
    ^ 'Le chien mange le poisson doucement'.
```

## étape 4 : Tester 
```pharo
cat := Cat new.
dog := Dog new.
meat := Meat new.
fish := Fish new.
cat eat: meat. 
cat eat: fish.
dog eat: meat. 
dog eat: fish.
```
en sortie :

```pharo
 'Le chat dévore la viande sauvagement'
 'Le chat mange du poisson doucement'
 'Le chien dévore la viande sauvagement'
 'Le chien mange le poisson doucement'
```

Le double dispatch fonctionne en deux étapes : </br>

- L'animal appelle la méthode eat: avec la nourriture comme argument. </br>
- La nourriture appelle une méthode spécifique de l'animal (comme eatMeat: ou eatFish:), en fonction de son propre type. </br>

Le double dispatch permet ainsi de gérer des interactions complexes entre deux objets en fonction de leur type respectif. </br>