> ## _Partie Wagnan SORO_

> ### _Practice message dispatch_

>>  Qu'est ce que je retiens du dispatch en pharo:
> Pharo utilise le dynamic dispatch, c'est-à-dire que la méthode appelée est déterminée à l'exécution, en fonction du receveur du message.
Un même message envoyé à différents objets peut avoir des comportements différents, selon la classe de l'objet récepteur.

> Pour illustrer l'utilisation du dispatch, nous avons l'implementation des méthodes or, not, &, ifTrue:IfFalse, IfFalse:ifTrue, ifTrue:
> > ``True >> | abool  
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
> > ``True >> ifFalse: ablock  
>> ^ nil.
>
> >True >> | ifTrue: ablock  
>> ^ ablock value.``  
>
> > ``False >> ifFalse: ablock  
>> ^ ablock value.
>
> >False >> | ifTrue: ablock  
>> ^ nil.``
>
> >| result |
result := true ifTrue: [ 'Ceci est faux' ]. On affiche ici "ceci est faux" car on a true dans la variable   
>| result |
result := true ifFalse: [ 'Ceci est faux' ]. Ici on aura nil   

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

>> ### _About the chess project_
> > Mon kata est d'implémenter le problème des 9 reines, il faudra: Remplacez la condition de victoire du jeu d'échecs standard par celle du problème des 9 reines, 
> c'est-à-dire s'assurer que 9 reines sont placées sur l'échiquier sans se menacer mutuellement lors du jeu.Cela repond bien au soucis du refactoring