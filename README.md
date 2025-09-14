MASTERMIND (Ruby CLI Game) 🎨🧩
===============================

A command-line implementation of the classic Mastermind code-breaking game 
written in Ruby. Players can take the role of either Code Maker or Code Breaker, 
competing against the computer in an 8-round battle of logic and deduction.


FEATURES ✨
----------
- 👤 Human vs 🤖 Computer gameplay
- 🎭 Choice of role: Code Maker or Code Breaker
- 🎨 Colorized CLI output (using 'colorize' gem)
- ✅ Win/Lose detection with feedback pegs
- 🔓 Reveals secret code at the end of each match

PROJECT STRUCTURE 📂
--------------------
mastermind-ruby/
│-- main.rb          -> Entry point
│-- lib/
│   ├── board.rb     -> Board logic and rendering
│   ├── computer.rb  -> Computer player behavior
│   ├── game.rb      -> Game flow and logic
│   └── players.rb   -> Human player logic
│-- Gemfile          -> Dependencies

INSTALLATION ⚙️
---------------
1. Clone the repository:
   git clone https://github.com/yourusername/mastermind-ruby.git
   cd mastermind-ruby

2. Install dependencies:
   bundle install
   (or manually run: gem install colorize rubocop)


HOW TO PLAY ▶️
--------------
1. Start the game:
   ruby main.rb

2. ✍️ Enter your name.

3. 🎭 Choose your role:
   - 1️⃣ for Code Breaker
   - 2️⃣ for Code Maker

4. Gameplay depends on your role:
   - 🧑‍🎨 Code Maker: Create a secret 4-color code for the computer to guess.
   - 🕵️ Code Breaker: Try to guess the computer’s secret code within 8 attempts.

5. Board symbols:
   🟢 O = Correct color in the correct position
   🔴 O = Correct color but in the wrong position
   ➕  = Incorrect color

LICENSE 📜
----------
This project is licensed under the MIT License.
----------
Made with 💎 Ruby for learning and fun!