# Design pattern

## Visitor

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/0e8e25f4-c37e-4daa-a8c4-6121d492ccb8)

Le Visiteur se fait dans le PDFDataType. Il permet de pouvoir gérer tout les types d'élément dans un pdf, sans se soucier de la nature de celui-ci, et permet une meilleure résistance face aux mise à jour du format PDF externe à Artéfact.
Les méthodes de visiting sont bien définie dans une catégorie de méthode résrvé à ce pattern.
## Composite

![image](https://github.com/Gabriella3620/Contrast/assets/129399867/4249f6cc-f69a-4d9d-8141-bc7bf76dfa8a)

Composite est utilisé dans le PDFComposite (comme son nom l'indique => facile à trouver !)


# Testing



## Coverage

![img1](https://github.com/Gabriella3620/Contrast/assets/129399867/339378be-a182-433e-8abb-401a29386835)

![img2](https://github.com/Gabriella3620/Contrast/assets/129399867/18ea335d-615f-45d4-80a0-41ad7fd2a988)


80% covergae totale

## Mutation Testing

![img3](https://github.com/Gabriella3620/Contrast/assets/129399867/ed01103a-8680-4f92-891a-5342cfbb06b2)

16% mutation, très bas, beaucoup de type de mutation différente ppasse (boolean changé, opérateur switché, etc etc )

## Improvement

Taux de mutation extrêmemt bas, on pourrait checker beaucoup de classe pour renforcer la robustesse du code.
