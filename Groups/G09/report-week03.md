# Report Week 3 - Group 09

You can find all of our related changes under [this fork repo](https://github.com/mrdedede/Chess).

## André FILHO

For my Kata in the chess app, I picked a huge battle to tackle - restricting the legal moves of the pieces whenever it's been noticed a move could lead potentially to a check.

First, my instincts were telling me to just try the game out, see what's going on when we are using it normally, and it wasn't late until I experienced some very odd errors, being those the ones that called my attention the most:

- A player could play repeatedly, turn after turn, without letting their rival play
- Pawns are always moving up front and attacking pieces in front of them (not diagonally)
- Pawns are not being promoted once they get to the end
- Movements which would put the king under a check are not being banned.

So I started right away looking forward to the test cases in order to look what were testing, and actually I was quite surprised to learn that they were working fine for the king class, which made me wonder "What if we tested some other possibilities for the king's moves?"

Said and done, I started by writing test cases for all instances in which the king would be in a check or surrounded by pieces of opposite colours leaving him just few squares to move around, simple tests which didn't have any surprises, as the only test that got a different result from the one I expected was actually the pawn's movement.

So I believed things needed to get a bit more radical or deep, the problem isn't that the king class itself isn't able to tell appart whether it will be in check or not, is that there isn't a way to send this message to other pieces. We are in needed of a separated specific check for checks that sends messages to all classes.

In any case, just for some confirmation, I wrote some other tests for the classes that still had tests going on for them:
- Make sure that the piece which is pinned under a rook threatening the king can not move to any square it normally could besides the ones that would kill it or still be in front of it

To put it briefly, here are some things I'd got to do for the next iterations:
- Write test cases for the possibilites of other pieces' moves
- Write tests to check if they are being blocked if the king is pinned to them
- Create a "global" check for checks, under the MyPiece class, which will check if a king of the same colour on the board will be check after a certain move and, if that's the case, take this possibility out of the moves array