## Thomas LIENARD

### Practice message dispatch

Grâce aux vidéo du mooc, j'ai pu comprendre que le dispatch permet d'éviter l'utilisation de condition qui peuvent être couteuse. Mais aussi qu'un message est un choix dynamique qui depend des classes chargé par exemple si ma classe ```Myclass``` hérite de la classe ```SuperClass``` qui possède la method ```doSomething:``` alors le message ```Myclass doSomething:``` utilisera la method de ```SuperClass```.

J'ai aussi trouvé que le dispatch dynamique ressemble au polymorphisme dans les autres languages tels que java, il permet une forte modularité du code mais aussi d'avoir des classes plus simple. 

Les classes joue le role de choix, donc avoir plusieurs classes ou une seul à un fort impact comme pour l'exemple des booléens avec l'implementation de not vu dans les videos.


* Pour tester le dispatch en Pharo j'ai écrit le code suivant :

```
Object << #Vehicle
  slots: {};
  package: 'Exemple'  

  wheel
    ^ '4' .

  Vehicle << #Car
    slots: {};
    package: 'Exemple'.

  Vehicle  << #Motorcycle
    slots: {};
    package: 'Exemple'.

    wheel 
      ^ '2'.

  | vehicle1 vehicle2 vehicle3|
	vehicle1 := Vehicle new.
	vehicle2 := Car new.
	vehicle3 := Motorcycle new.

    vehicle1 wheel.
    vehicle2 wheel.
    vehicle3 wheel.
```

Je m'attend donc à avoir respectivement '4', '4', '2'. 

Après avoir testé ce code, j'obtient bien ce resultat.

## Baptiste PARENT

### Practice message dispatch

D'après ce que j'ai compris la dispatch c'est le mécanisme qui permet de choisir la méthode exécutée en fonction du message et du receveur. 

En considérant cet exemple : 
```
Object subclass: ParentClass [
    ParentClass >> myMethod [
        ^ 'Méthode Parent'
    ]
]

ParentClass subclass: ChildClass [
    ChildClass >> myMethod [
        ^ 'Méthode Enfant'
    ]
]
```
```
| obj |
obj := ChildClass new.
obj myMethod
```

Dans cet exemple, myMethod est redéfini dans ChildClass. En appelant la méthode myMethod depuis une instance de ChildClass la méthode exécutée sera celle de ChildClass

J'ai appris ce concept en regardant le MOOC.