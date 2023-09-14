# Projects

From week 5 to week 12 you will work (improve, extend) on one of these projects

## Bloc 
Bloc is a new graphical library
- https://www.slideshare.net/esug/bloc-for-pharo-current-state-and-future-perspective
- http://www.github.com/pharo-graphics/Bloc

## Possible Games

- Light Beamer
- Sudoku
- 2048
- Memory
- Snake 
- Tetris 
- picross (nonogram)
- SlideOut
- Quinto
- Game of Life
- SameGame
- Taquin
- Maze generator
- Bomberman
- Puissance4 (for this one we will also define a little AI that will be able to compete against humans :)

You can find some ideas of games at: 
https://inventwithpython.com/blog/2012/02/20/i-need-practice-programming-49-ideas-for-game-clones-to-code/

###Resources

The myg framework is a framework to build games. 
A Miner, Sokoban and Takuzu have been built on top of it.
It provides ways to build levels and other facilities.

```
Metacello new
 	baseline: 'Myg';
 	repository: 'github://Ducasse/Myg:toplo-paging/src';
 	onConflictUseIncoming;
 	load
```
You will just need to execute `MygSokoban openWithMenuBar`.

You can find some other examples in 

```
Metacello new
    baseline: 'BlocTutorials';
    repository: 'github://pharo-graphics/Tutorials:dev-1.0/src';
    load
```

There is one tutorial showing how to build a simple  memory game and one 2048 game (with a prototype of skins for Bloc).

There are also some other games:
	- a bomberman (clement bera + pdf in programmez)
	- a breakout 
	- an isometric game check discord channel 
	- MetaBorg defines a tetris, pacman, sokoban

