# Projects

From week 4 to week 12 you will work (improve, extend) on one of these projects

## Microdown
Microdown is a better markdown. It can be used (integrated in the pillar document compilation chain) to produce slides, books, websites

### Possible extensions
- Test de livres de Pillar a Microdown
- Ecstatic: a static  web site renderer 
   - making foliage2 (foliage fully using microdown) [https://github.com/noha/foliage]()
- Designing a Blog
  - index + search	
- Extension to supporte citezen
  - [https://github.com/Ducasse/Citezen]()
  - Kozen is a little system to generate static web pages with citezen plugin [http://github.com/Ducasse/Citezen]()

- Math caching. 
   - Math expressions request a latex server that serves a form representing the math expression. 
   - It would nice to catch it locally.

- PlantUML like extension to support Design description in class comments
   -  https://plantuml.com/class-diagram
   - implementing some + placement

```
@startuml
Class01 <|-- Class02
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 -- Class10
@enduml
```


## Regis
A web app to register to conference [http://github.com/ESUG/Regis]()

### Possible extensions
- Managing Talks
- More tests
- Changing back-ends
- Crash recovery


## Iceberg
Iceberg is a powerful model and tool to manage code representation and git operations.

### Possible Extensions
- Cherry picking
- Optimization
- Tonel. Tonel is only able to parse full package


## Citezen 
Citezen is a library to manage scientific publications. It also support the generation of webpage, CVs...
- [http://github.com/Ducasse/Citezen]()

### Possible Extensions
- Revisit the document model	and visitors
- writing tests
- writing parameterized tests
- writing a new core
- Removing Phrase



## Brea
A couple of years ago, I prototyped something between a static site generator and a decoupled/headless CMS, called Brea[1] and we did a lot of extensive workshops to teach how to use it. The site (in Spanish) for the workshops and documentation of Brea is made using Brea and you can see it at [2]. It tries to address the documentation needs of the local communities which use diverse places to write documentation (HegdeDoc, Internet Archive) and want to consolidate them in a unified place. We're now discussing to integrate Brea with TiddlyWikiPharo[3] as TiddlyWiki has become an integral part of our documentation practices and maybe we could try another take on it if we get enough resources for that.

- [1] [https://code.tupale.co/Offray/Brea]()
- [2] [https://mutabit.com/repos.fossil/indieweb/]()
- [3] [https://code.tupale.co/Offray/TiddlyWikiPharo/]()

