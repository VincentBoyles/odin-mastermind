require_relative 'board'
require_relative 'players'
require_relative 'computer'

class Game
  attr_accessor :players, :board

  def initialize
    @players = []
    @board = ''
  end

  def add_players
    player1 = HumanPlayer.new
    player2 = ComputerPlayer.new
    player1.set_name
    player1.set_choice
    player2.computer_choice(player1.choice)
    @players.push(player1)
    @players.push(player2)
  end

  def generate_board
    self.board = Board.new
  end

  def declare_role
    puts "#{players[0].name} choose to be #{players[0].choice}!"
    puts "#{players[1].name} choose to be #{players[1].choice}!"
  end

  def begin_decoding
    if players[0].choice == 'Code Breaker'
      generate_board.computer_secret
      8.times do
        board.place_color
        board.assesment
        puts board.show_board
      end
      puts board.code
    else
      generate_board.create_secret
      8.times do
        board.computer_place_color
        board.assesment
        puts board.show_board
      end
    end
  end

  def game_start
    puts '-------------------------------------------'
    add_players
    puts '-------------------------------------------'
    declare_role
    puts '-------------------------------------------'
    begin_decoding
  end
end

game1 = Game.new
game1.game_start
