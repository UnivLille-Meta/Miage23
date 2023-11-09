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

# Resources

## The Myg framework

Myg is a framework to build games based on Bloc.
A Miner, Sokoban and Takuzu have been built on top of it.
It provides ways to build levels and other facilities.

```
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc:05e5b0e385811719537f8cd89966b150a07be985/src';
    onConflictUseIncoming;
    load;
    lock.

Metacello new
    repository: 'github://Ducasse/Myg:v1.0.0';
    baseline: 'Myg';
    onConflictUseIncoming;
    load.
```

You will just need to execute `Sokoban open` to open the Sokoban, or do the same with `MineSweeper` or `Takuzu`.
For more information, you can go to the website of the project: https://github.com/ducasse/myg

## Bloc and examples

Bloc is a graphics toolkit and framework that supports advanced 2D rendering an common user interactions such as clicks and keyboard events.
Myg is based on Bloc. This means that some actions will require understanding how Bloc works, how to render your game and how to interact with the user to make your game usable.

Besides the base Bloc code, you can find some other examples in the package below

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

