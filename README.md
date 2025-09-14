MASTER MIND (Ruby) 🎨
=====================

A command-line implementation of the classic Mastermind code-breaking game 
built in Ruby. Play as the Code Maker or Code Breaker against a computer opponent.


FEATURES ✨
----------
- Human vs Computer gameplay
- Role selection: Code Maker or Code Breaker
- Colorized CLI output (colorize gem)
- Feedback pegs to guide guesses:
    🟢 Green O = Correct color in the correct position
    🔴 Red O   = Correct color but wrong position
    ➕ Plus    = Incorrect color
- Automatic code generation and guessing by the computer
- Reveals the secret code at the end of the game


PROJECT STRUCTURE 📂
--------------------
.
├── main.rb              # Entry point to start the game
└── lib/
    ├── game.rb          # Game flow and logic
    ├── board.rb         # Board rendering and code logic
    ├── players.rb       # Human player class
    └── computer.rb      # Computer player class


INSTALLATION & USAGE 🛠
-----------------------
1. Clone the repository:
   git clone https://github.com/your-username/mastermind-ruby.git
   cd mastermind-ruby

2. Install dependencies:
   bundle install
   (Make sure you have the 'colorize', 'rubocop', and 'debug' gems installed)

3. Run the game:
   ruby main.rb


HOW TO PLAY 🧑‍💻
----------------
1. Enter your name.
2. Choose your role:
   - 1 for Code Breaker
   - 2 for Code Maker

3. If you are the Code Maker:
   - Create a secret code using 4 colors (numbers 1–6).
   - The computer will attempt to guess it in 8 rounds.

4. If you are the Code Breaker:
   - Try to guess the computer’s secret code in 8 rounds.
   - Use numbers 1–6 to place colors on the board.

5. The game ends when either the code is broken or all attempts are used.
6. At the end, the secret code is revealed.


EXAMPLE GAME FLOW 📜
--------------------
-------------------------------------------
Please enter your name:
> Alice
Would you like to be the Code Maker or Code Breaker?
Enter 1 for Code Breaker
Enter 2 for Code Maker
> 1
Alice choose to be Code Breaker!
Computer choose to be Code Maker!
-------------------------------------------

Enter only a number from 1 to 6 for a color to be placed on gameboard row[1] cell[1].
> 4
Enter only a number from 1 to 6 for a color to be placed on gameboard row[1] cell[2].
> 2
...

-----------------------------------------
                MASTERMIND
-----------------------------------------
O + |     BLU     RED     YEL     GRE
-----------------------------------------


CONCEPTS PRACTICED 📚
---------------------
- Object-Oriented Programming (OOP)
- Class composition (Game, Board, Players, Computer)
- User input handling and validation
- Conditional logic for win/loss detection
- Randomized computer choices


LICENSE 📄
----------
This project is licensed under the MIT License.
You may use, modify, and share it for learning or personal projects.

Made with 💎 Ruby for learning and fun!
