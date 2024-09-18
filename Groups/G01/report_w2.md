> ## _Partie Wagnan SORO_

> ### _Practice message dispatch_

>>  Qu'est ce que je retiens du dispatch en pharo:
> Pharo utilise le dynamic dispatch, c'est-à-dire que la méthode appelée est déterminée à l'exécution, en fonction du receveur du message.
Un même message envoyé à différents objets peut avoir des comportements différents, selon la classe de l'objet récepteur.
> Tout est objet dans le langage pharo

> Pour illustrer l'utilisation du dispatch, nous avons l'implementation des méthodes or, not, &, ifTrue:IfFalse, IfFalse:ifTrue, ifTrue:  
> ## not Operator  
>  > True >> not  
>> ^ false.
>
> > False >> not  
>> ^true.
>Cette implémentation de not n'utilise de conditionals
> ## | Operator  
>  > ``True >> | abool  
>> ^ self.   
>
> >False >> | abool   
>> ^ abool.``  
>
> >``| x y |
x := 20.
y := 5.
(x < 15 or: [ y < 10 ])
ifTrue: [ 'Au moins une des conditions est vraie' ]
ifFalse: [ 'Les deux conditions sont fausses' ].
``  
>> cet exemple va retourner 'Au moins une des conditions est vraie' car il a evalué les deux expressions et le resultat global est ici true  `
>
> Or: et | on l'a même implementer, sauf que or: n'evalue pas les deux expressions si le premier est true, il est lazy et | un eager
>
> > ## ifFalse: Operator and ifTrue Operator
> > ``True >> ifFalse: ablock  
>> ^ nil.
>
> >True >> | ifTrue: ablock  
>> ^ ablock value.``  
>
> > ``False >> ifFalse: ablock  
>> ^ ablock value.
>
>
> >False >> | ifTrue: ablock  
>> ^ nil.``
>
> >| result |
result := true ifTrue: [ 'Ceci est faux' ]. On affiche ici "ceci est faux" car on a true dans la variable   
>| result |
result := true ifFalse: [ 'Ceci est faux' ]. Ici on aura nil   


> > ## ifFalse:ifTrue: Operator and ifTrue:ifFalse: Operator
> >True >> | ifTrue: trueAlternativeBlock ifFalse: falseAlternativeBlock
>> ^ trueAlternativeBlock value.``
>
> >True >> | ifFalse: falseAlternativeBlock ifTrue: trueAlternativeBlock
>> ^ trueAlternativeBlock value.``
>
> > ``False >> ifTrue: trueBlock ifFalse: falseAlternativeBlock  
>> ^ trueBlock value.
>
> > ``False >> ifFalse: falseAlternativeBlock ifTrue: trueAlternativeBlock  
>> ^ falseAlternativeBlock value.
>
> >| result |  
>result := (3 squared) < (2 squared + 6 )   
> ifFalse: [ 'Ceci est faux' ]  
>ifTrue: [ 'Ceci est exact'].   
Cette condition est vraie, donc l'assertion retourne le resultat du block de ifTrue et donc : "Ceci est exact". Si la première partie avait été (6 squared) , le resultat serait celui de ifFalse et donc "Ceci est faux".   

>> On retient ici du dispatch notamment  avec les exercices précédent le dispatch dyanamique :
> Quand l'objet est true , Pharo trouve la méthode ifTrue: définie dans la classe True et l'exécute.  
>C'est le principe de "let the receiver decide" et on délègue le travail à la bonne classe booléenne et chaque classe à sa propre implémentation
> Quand l'objet est  false, Pharo trouve la méthode ifTrue: définie dans la classe False et l'exécute. A chaque fois la méthode a appeler est chercher dans la classe du receveur du message
Ces differentes informations ont été trouvées dans les vidéos du Module 1 disponibles dans le github du cours

> ### _Point important appris_
> Les messages en pharo sont importants dans le dispatch
> - Le dispatch dynamique permet aux objets de répondre au même message de manière différente, selon leur propre type. Cela est connu sous le nom de polymorphisme.
> - Les méthodes sont définies dans les classes et déterminent comment un objet répond à un message spécifique.
> - Le dispatch dynamique est le processus qui permet à l'exécution, de savoir quelle méthode doit être appelée en réponse à un message envoyé.
> - le dispatch dynamique supporte la hiérarchie de classes    

>> ### _About the chess project_
> > Mon kata est d'implémenter le problème des 9 reines, il faudra: Remplacez la condition de victoire du jeu d'échecs standard par celle du problème des 9 reines,
> c'est-à-dire s'assurer que 9 reines sont placées sur l'échiquier sans se menacer mutuellement lors du jeu.Cela repond bien au soucis du refactoring


## _Partie Boukhars Ouassila_


### Practice message dispatch

#### Write small code examples challenging your knowledge about dispatch. Did the examples work as expected?How can you correct your assumptions and how did you find this information?

Yes, the examples work as expected, The class GameCase, BonusCase, GoldenCase and NormalCase are a part of a game
where each has its own behavior for distribute points.I didn't expected something different for what I get because
the method addPoints is correctly dispatched to the appropriate subclass( BonusCase, GoldenCase and NormalCase).
Here you can find the depository of the package GameCase : https://github.com/ouassilaBkrs/C3P-pharo/tree/main/MyGameCase
