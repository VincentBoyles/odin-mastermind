# 🎯 Mastermind (Ruby)

A simple command-line implementation of the classic Mastermind code-breaking game built in Ruby.  
Play as a Code Maker or Code Breaker against a computer opponent.

---

## ✨ Features

- Human vs. Computer gameplay
- Interactive CLI with colorized output (`colorize` gem)
- Choose to play as Code Maker or Code Breaker
- Input validation for player names and role selection
- Automatic computer code generation and guessing
- Win detection with feedback (O = correct position, red O = correct color wrong place, + = incorrect)

---

## 📂 Project Structure
```
.
├── main.rb              # Entry point to start the game
└── lib/
    ├── game.rb          # Game logic and flow
    ├── board.rb         # Board representation and rules
    ├── players.rb       # Human player class
    └── computer.rb      # Computer player class
```
---

## 🛠 Installation & Usage

1. Clone the repository:
   ```
   git clone https://github.com/your-username/mastermind-ruby.git
   cd mastermind-ruby
   ```

2. Install dependencies:
   ```
   bundle install
   (Requires the `colorize` and `debug` gems. Development also uses `rubocop`.)
   ```
   
3. Run the game:
   ```
   ruby main.rb
   ```
---

## 🧑‍💻 How to Play

1. Enter your name.
2. Choose whether to play as Code Maker (create a secret code) or Code Breaker (guess the code).
3. If you’re the Code Maker, enter a sequence of 4 colors using numbers 1–6.
4. If you’re the Code Breaker, try to guess the computer’s secret code.
5. After each guess, hints will be displayed:
   - ✅ Green O → Correct color in correct position
   - 🔴 Red O → Correct color in wrong position
   - ➕ + → Incorrect color
6. You have 8 attempts to guess the code before the game ends.

---

## 📜 Example Game Flow
```
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

Create your guess using numbers 1–6:
1 for BLUE
2 for GREEN
3 for CYAN
4 for RED
5 for MAGENTA
6 for YELLOW
> 1
Create your guess using numbers 1–6:
1 for BLUE
2 for GREEN
3 for CYAN
4 for RED
5 for MAGENTA
6 for YELLOW
> 4
Create your guess using numbers 1–6:
1 for BLUE
2 for GREEN
3 for CYAN
4 for RED
5 for MAGENTA
6 for YELLOW
> 6
Create your guess using numbers 1–6:
1 for BLUE
2 for GREEN
3 for CYAN
4 for RED
5 for MAGENTA
6 for YELLOW
> 3

      -----------------------------------------
                     MASTERMIND
      -----------------------------------------
          |     UNK     UNK     UNK     UNK
      -----------------------------------------
      + + |
      + + |     BLU     RED     YEL     CYA
      -----------------------------------------
```
---

## 📚 Concepts Practiced

- Object-Oriented Programming (OOP)
- Class composition (Game, Board, Players)
- User input handling & validation
- Conditional logic for win/loss detection
- Computer guessing and code generation

---

## 📄 License

This project is licensed for educational purposes only.  
You may use, modify, and share it for learning or personal projects.  
Commercial use requires explicit permission.

---

Made with 💎 Ruby for learning and fun!
