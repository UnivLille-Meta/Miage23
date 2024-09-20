Group 13: Week 2 report  

SOLEIMANI 	SEPIDEH

Dispatch is the mechanism which determines what method must be run when a message is sent to an object. 

Inorder to understand better I wrote a program with a class and subclasses which determines the department of students. All subclasses have the same methods ‘Name’ and ‘Get:’. Which will be called properly based on the defined subclass.
I also left a subclass without method ‘Name’, in this case when method name is called, the ‘Name’ of the main class will be executed to clarify that the student's department is not confirmed yet.
Without dispatch in Pharo, we would have been forced to compare the defined object in the structure of the class to see which method should be run.

Here is my github link:

https://github.com/sepideh94/C3P_week2

Hamzaoui Ikram Leila 

Le dispatch en Pharo consiste à choisir dynamiquement quelle méthode appeler en fonction d'un message ou d'une condition. En général, cela repose sur l'idée d'envoyer des messages aux objets, car en Pharo, tout est objet et les messages sont utilisés pour invoquer des méthodes.
Dans mon exemple, j'ai créer une classe mère 'Animal' qui contient une méthode speak. aprés j'ai crée 2 classes filles 'dog' et 'cat' qui héritent cette méthode. En fonction de l'instance que nous créons, lorsque nous envoyons le message speak, la méthode correcte est exécutée, grâce au dispatch.

voici le lien de l'exemple: https://github.com/ikramleilahm/Dispatch

Ps: En regardant les videos, j'ai compris que cette solution nous evitent d'utiliser 'conditionals' en utilisant deux classes qui representent deux cas en appliquant " let the receiver decide".
