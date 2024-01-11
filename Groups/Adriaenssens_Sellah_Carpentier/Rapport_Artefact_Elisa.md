- Installation du projet

### Ce que j'apprends du projet 
- Il y a 4 packages différents.
- J'ai exécuté tous les tests et ils passent bien
- J'ai appliqué Dr Tests pour savoir le coverage et j'obtiens 42.86% pour "Artefact-Core-Tests"
- J'ai essayé d'appliquer les tests de mutation
- Il y a le pattern du Composite qui est implémenté
  - On peut composer des PDFCodeSegment grâce au PDFCompositeCodeSegment
  - On peut créer une composition en ajoutant un élément à la fois : generateCodeSegmentWith
  - Ou avec une collecction directement : generateCodeSegmentsCollectionWith
- Il y a une classe "PDFDemos" qui créé des PDF pour avoir des exemples
- On a un script qui permet d'exécuter toutes les démos
- Il y a un script pour chaque démos créée, ils se trouvent dans le "class side"



### Comment je procède
- J'ai lu le readMe pour comprendre le but et l'installation du projet
- Je décide de commencer par vérifier les tests
- Utiliser les outils de recherche pour savoir quand sont utilisées les méthodes, classes
  - J'ai trouvé le PDFCompositeCodeSegment
  - J'ai fait "class refs" pour savoir où est-ce que la classe était utilisée
  - J'ai vu qu'elle était appelée dans "PDFComposite>>>generateCodeSegmentWith"
  - Dans cette méthode, il y a un appel à "generateCodeSegmentsCollectionWith"
  - Et "generateCodeSegmentsCollectionWith" fait appel à "generateCodeSegmentWith"
  - Elles ont l'air de s'appeler mutuellement
  - Pourtant quand on regarde la définition de "generateCodeSegmentsCollectionWith", c'est logique, elle itère sur sa collection et pour chaque élément, elle appelle la méthode de génération pour un élément "generateCodeSegmentWith"
  - generateCodeSegmentsCollectionWith > chaque sous élément va aller générer ses propres sous éléments
  - Et ça "dépile" comme ça pour chaque PDFGenerator
- J'ai lu le Guide.md et là j'ai vu que je pouvais exécuter des démos
- Je les ai donc lancés 

