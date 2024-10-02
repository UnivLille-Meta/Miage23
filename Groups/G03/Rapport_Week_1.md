# ANDRIANIRINARIJAONA Joelle

## Collection et itération
Dans Pharo, une collection c'est une classe abstraite comme elle ne peut pas être instanciée qui regroupe et gère plusieurs objets. Généralement, il sert de modèle pour les classes normales.
Les plus utilisées sont les Array et OrderedCollection. Toutes les itérations commencent à index 1. Je n'ai pas encore maîtrisé le sujet mais j'ai lancé quelques exemple sur Pharo pour pouvoir répondre à la question et en regardant la vidéo: 🐥 Un survol des principales collections (W3S7-FR)

## Conditions
En Pharo, les conditionnels sont écrits en utilisant des messages envoyés à des objets ce qui est un peu spéciale comparée aux autres langages. Une particularité que j'ai remarqué lors de quelques test c'est l'écriture de la condition et la vérification par ifTrue et ifFalse vient après.
j'ai demandé à une IA un exemple à tester sur Playground:

```pharo
unNbr := 2.

result := unNbr even
    ifTrue: [ 'Pair' ]
    ifFalse: [ 'Impair' ].
```
Vérification d'un nombre s'il est pair ou impair

## Classes et Methodes
J'ai testé l'exercice du compteur jusqu'à la fin. La prise en main a été facile je dirai mais c'est la connexion avec Git qui a le plus pris du temps sachant que les supports n'envisagent pas tous les cas d'erreur possible.
https://github.com/tianajoelle/counterPharo.git

## Code base pharo
Une méthode doit effectuer une seule chose bien définie pour passer tous les tests.
Convention de nommage strict
