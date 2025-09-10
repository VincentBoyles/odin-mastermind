require 'colorize'
require_relative 'players'
require_relative 'computer'

class Board
  attr_accessor :board, :color_cords, :hint_cords, :secret_cords, :row, :code

  def initialize
    @color_cords = Array.new(8) { Array.new(4, '---') }
    @hint_cords = Array.new(8) { Array.new(4, '+') }
    @secret_cords = Array.new(4, 'UNK')
    @row = 0
    @code = []
  end

  def show_board
    board =
      "
      -----------------------------------------
                     MASTERMIND
      -----------------------------------------
          |     #{secret_cords[0]}     #{secret_cords[1]}     #{secret_cords[2]}     #{secret_cords[3]}
      -----------------------------------------
      #{hint_cords[7][2]} #{hint_cords[7][3]} |
      #{hint_cords[7][0]} #{hint_cords[7][1]} |     #{color_cords[7][0]}     #{color_cords[7][1]}     #{color_cords[7][2]}     #{color_cords[7][3]}
      -----------------------------------------
      #{hint_cords[6][2]} #{hint_cords[6][3]} |
      #{hint_cords[6][0]} #{hint_cords[6][1]} |     #{color_cords[6][0]}     #{color_cords[6][1]}     #{color_cords[6][2]}     #{color_cords[6][3]}
      -----------------------------------------
      #{hint_cords[5][2]} #{hint_cords[5][3]} |
      #{hint_cords[5][0]} #{hint_cords[5][1]} |     #{color_cords[5][0]}     #{color_cords[5][1]}     #{color_cords[5][2]}     #{color_cords[5][3]}
      -----------------------------------------
      #{hint_cords[4][2]} #{hint_cords[4][3]} |
      #{hint_cords[4][0]} #{hint_cords[4][1]} |     #{color_cords[4][0]}     #{color_cords[4][1]}     #{color_cords[4][2]}     #{color_cords[4][3]}
      -----------------------------------------
      #{hint_cords[3][2]} #{hint_cords[3][3]} |
      #{hint_cords[3][0]} #{hint_cords[3][1]} |     #{color_cords[3][0]}     #{color_cords[3][1]}     #{color_cords[3][2]}     #{color_cords[3][3]}
      -----------------------------------------
      #{hint_cords[2][2]} #{hint_cords[2][3]} |
      #{hint_cords[2][0]} #{hint_cords[2][1]} |     #{color_cords[2][0]}     #{color_cords[2][1]}     #{color_cords[2][2]}     #{color_cords[2][3]}
      -----------------------------------------
      #{hint_cords[1][2]} #{hint_cords[1][3]} |
      #{hint_cords[1][0]} #{hint_cords[1][1]} |     #{color_cords[1][0]}     #{color_cords[1][1]}     #{color_cords[1][2]}     #{color_cords[1][3]}
      -----------------------------------------
      #{hint_cords[0][2]} #{hint_cords[0][3]} |
      #{hint_cords[0][0]} #{hint_cords[0][1]} |     #{color_cords[0][0]}     #{color_cords[0][1]}     #{color_cords[0][2]}     #{color_cords[0][3]}
      -----------------------------------------
      "
  end

  def create_secret
    cell = 0
    puts 'Create a secret code using numbers from 1 to 6: '
    4.times do
      code.push(choose_color)
      cell += 1
    end
  end

  def computer_secret
    cell = 0
    4.times do
      code.push(['BLU'.blue, 'GRE'.green, 'CYA'.cyan, 'RED'.red, 'MAG'.magenta, 'YEL'.yellow].sample)
      cell += 1
    end
  end

  def choose_color
    input = 0
    until [1, 2, 3, 4, 5, 6].include?(input)
      puts '1 for BLUE'.blue
      puts '2 for GREEN'.green
      puts '3 for CYAN'.cyan
      puts '4 for RED'.red
      puts '5 for MAGENTA'.magenta
      puts '6 for YELLOW'.yellow
      input = gets.chomp.to_i
    end
    case input
    when 1
      'BLU'.blue
    when 2
      'GRE'.green
    when 3
      'CYA'.cyan
    when 4
      'RED'.red
    when 5
      'MAG'.magenta
    when 6
      'YEL'.yellow
    end
  end

  def place_color
    cell = 0
    4.times do
      puts "Enter only a number from 1 to 6 for a color to be placed on gameboard row[#{row + 1}] cell[#{cell + 1}]."
      color_cords[row][cell] = choose_color
      cell += 1
    end
    self.row += 1
  end

  def computer_place_color
    cell = 0
    4.times do
      puts "Enter only a number from 1 to 6 for a color to be placed on gameboard row[#{row + 1}] cell[#{cell + 1}]."
      color_cords[row][cell] = ['BLU'.blue, 'GRE'.green, 'CYA'.cyan, 'RED'.red, 'MAG'.magenta, 'YEL'.yellow].sample
      cell += 1
    end
    self.row += 1
  end

  def assesment
    cell = 0
    color_cords[row - 1].each_with_index do |peg, index|
      if peg == code[index]
        hint_cords[row - 1][cell] = 'O'.green
        cell += 1
      elsif code.include?(peg)
        hint_cords[row - 1][cell] = 'O'.red
        cell += 1
      end
    end
  end
end
