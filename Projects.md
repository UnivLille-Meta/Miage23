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

# Project Guidelines (Mise en forme du rendu)

## Make your project available for us

- **Mandatory: give us read access to your code**
   - Add a `Readme.md` file in your group's directory, next to where you put your weekly repports.
   - Add in your `Readme.md` file the link to your repository.
   - Make sure your repository is public so we can see it
 
- **Optional: give us write access to your code**
   - Share your repository with us the teachers, so we will have write access to your code
 
## Prepare your repository instructions

All the instructions of this sections are **Mandatory**.

Add in your repository a `Readme.md` file with the following information:
- Installation instructions: what should we download to run your project? in what order? Please test these installation instructions and make sure everything works
- Usage instructions: What should we do to run your project? How do we use it? How do we interact with it?
- Where is your code/tests located? Should we take care of something?

Add an extra section with **Design decisions**. Use this section to explain things that are not visible in the code:
- Why is the code like this?
- Why is this part of the code more tested than the other?
- Where did you put the priorities?
- Where did you use (or not) design patterns in the code and why?
- ...

## What we are going to look

We are going to look in your project, in different levels:

1. First level: functional -- le minimum syndical
  1. Does it install?
  2. Does it run?
  3. Are there tests?
  4. Are the tests green?

2. Second level: code quality
  3. Is the code readable?
  4. How did you use the tools that were at your disposal? Myg, Bloc, Test framework...
  5. How did you apply the concepts we saw in class? Design patterns, inheritance, delegation, polymorphism...

3. Cross-cutting -- soft skills:
  5. Asking for help and questions in mailing lists/discord/discussion channels
  7. Answering in mailing lists/discord/discussion channels
  6. Opening entries in issue/bug trackers
