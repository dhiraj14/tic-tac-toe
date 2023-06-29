# tic-tac-toe
This is a simple implementation of a 2 Player TicTacToe Game.
The game board looks as follows:

 1 | 2 | 3
----------
 4 | 5 | 6
----------
 7 | 8 | 9
 ----------
 
To start the game, give the following command on terminal:

`ruby tic_tac_toe.rb`

The game starts with user entering their Names when prompted:
`Enter the name of first Player: `

Once provided, a toss happens which would select one of the users based on outcome of toss.
Say players has provided name `Bunny` and `Honey` and `Bunny` wins the toss.
The toss winner `Bunny` will be given `X` and loser `Honey` will input `O`.

`Bunny` will now be prompted to select a number in the range of `1..9` from the board.
Say Bunny enters `5` and the board will look the following:

----------
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
----------
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| X | 
----------
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; | 
----------

Next will be `Honey's` move. If Honey selects an already occupied position, `Invalid Move` will be alerted. 
Similarly, if the input is not in the range `1..9`, `Invalid input` will be alerted.

There is a total of 9 moves. If any of the player wins, say `Bunny` wins as follows:

 X | O | 
----------
 X | O | 
----------
 X | &nbsp;&nbsp;&nbsp; | 
 ----------

 `Bunny WINS` will be alerted  and the game will exit.
 If the moves gets exhausted, `It's a DRAW` will be alerted.
 

