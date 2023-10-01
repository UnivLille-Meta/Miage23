# Gabriella -----

Cette semaine, nous avons abordé une des notions importantes du cours, le double dispatch.
De ce que j’ai compris, le double dispatch permet réellement d’utiliser le principe du “Don’t tell, ask”. Il permet d’éviter les if. Avec la manière dont on a appris à coder, on a plus tendance à poser des questions en utilisant des if; ce qui des fois rallonge beaucoup notre code.
J’ai vu que le double dispatch permet de rendre un code de plusieurs lignes de “if” assez complexe à comprendre en un code plus facile à comprendre et plus simple à maintenir.

### Préparation de la présentation:
J’ai commencé à aborder le projet Artefact pendant que Axel avançait sur AVL et que Nouha se renseignait sur le Mutation Testing.
Le projet Artefact est assez grand. J’étais un peu perdu au début en sachant pas trop où regarder et sur quoi se concentrer. J’essaie actuellement de l’aborder pas à pas et d’utiliser le reverse engineering en essayant pas de tout comprendre en une fois mais en essayant plutôt de cibler les classes importantes et de me concentrer sur celles-ci.


### Points sur lesquels je vais travailler:
* Dans la suite de cette semaine, je vais continuer de travailler sur le projet Artefact .

* J’ai remarqué que je comprenais plus facilement avec les vidéos du MOOC. Elles expliquent chaque notion du cours et vont même au-delà d’une manière assez accessible. Je vais essayer de regarder s’il y en a sur le mutation testing que je trouve ne pas avoir bien compris.


# Axel -----

  Cours sur le double dispatch déjà vu en META pour ma part. Cependant le rappel était bien venu. Dans l'exemple du Pierre-feuille-ciseaux, instinctivement j'aurai cherché le polymorphisme dans les arguments:



( vs: aRock / vs: aPaper / vs: aScissors )



Pour permettre à un appel `vs:` de pouvoir identifier par type le comportement. Mais grâce au rappel durant ce cours, j'ai pu corriger ma logique et plutôt faire un réel "ping pong" du 'double'-dispatch, avec un appel personnalisé dans le receveur du message `vs:`



Puis on a intégré Nouha à notre groupe. On a discuté ensemble de la marche à suivre pour être efficace et ne pas se marcher dessus. J'ai continué le rapport général d'AVL, Nouha s'est renseignée sur drTest & le mutation testing au sens technique et Gabriella a commencé à s confronter à Artefact, pour que le lendemain, en dehors des cours, nous mettions nos réflexions en commun et améliorions les travaux de chacun.



Nous étions un peu perdus dans les découvertes des deux projets, mais je dirai (de mon point de vue subjectif) qu'aujourd'hui ce qui nous a le plus aidé ça a été la discussion. En "interne", ça nous a permis d'être plus au clair et de centraliser. Et en "externe", pouvoir avoir le point de vue/angle d'attaque d'autres groupes nous a permis de mieux comprendre et pouvoir avoir plus de recul sur notre analyse, pour mieux s'y réattaquer


# Nouha -----


