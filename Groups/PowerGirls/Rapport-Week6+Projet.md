This week the four of us are studying for the exam on Thursday by reviewing our course materials, watching videos, and working on exercices. 
We also took a look at games built on the Myg Framework to gain a better understanding. 
As a result, we have decided on our initial design sketch for the game we will be continuing to work on in the upcoming weeks.

# Tron game design sketch:
## Game Title: 
Tron game
## What is the game about, what is the objective?
- Game Presentation : the tron light cycle game is a classic and iconic game where players control lines of light and must strategically maneuver to avoid colliding with the trails left behind by themselves or their opponents. 
As players move their light cycle, they leave a trail behind them and the trails persist on the game board until the round ends.

- Game Objective: Eliminate oppnents by forcing them to collide with either their own or your light cycle trails.
Be the last player standing to win the round.

## Objects: 
Elements :
    Player :
      SmartPlayer: Controlled by an algorithm, represented by a light cycle.
      RandomPlayer: Controlled by users, represented by a light cycle.
    Ground : The game ground where all action takes place.
    Wall
    Trail: the path left by players.
Point: used to be able to follow the move state.
Paging: responsible for the initial interface and menu options.
Tron : entry point for the game.
Board: the game board.
BoardElement: represents individual elements on the game board.
Game manager: manages the overall game state.
Algorithm: we will decide between MaxN and AlphaBeta
Heuristque: we will decide between Voronoi and OpenSpace

## Interactions: 
- Key press : control the directions of light cycles
- Collision: When a player's light cycle collides with a trail or a barrier, the round ends.

## Tests:
- We will conduct tests to assess various aspects of our game, including game logic, actions, game board structure, game manager...
