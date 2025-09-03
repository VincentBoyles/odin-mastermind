class Board
  attr_accessor :board, :color_cords, :hint_cords, :secret_cords

  def initialize
    @color_cords = Array.new(8) { Array.new(4, '-') }
    @hint_cords = Array.new(8) { Array.new(4, '+') }
    @secret_cords = Array.new(4, 'UNK')
  end

  def show_board
    board =
      "
      -----------------------------------------
                      MASTERMIND
      -----------------------------------------
          |    #{secret_cords[0]}     #{secret_cords[1]}     #{secret_cords[2]}     #{secret_cords[3]}
      -----------------------------------------
      #{hint_cords[7][2]} #{hint_cords[7][3]} |
      #{hint_cords[7][0]} #{hint_cords[7][1]} |    #{color_cords[7][0]}       #{color_cords[7][1]}       #{color_cords[7][2]}       #{color_cords[7][3]}
      -----------------------------------------
      #{hint_cords[6][2]} #{hint_cords[6][3]} |
      #{hint_cords[6][0]} #{hint_cords[6][1]} |    #{color_cords[6][0]}       #{color_cords[6][1]}       #{color_cords[6][2]}       #{color_cords[6][3]}
      -----------------------------------------
      #{hint_cords[5][2]} #{hint_cords[5][3]} |
      #{hint_cords[5][0]} #{hint_cords[5][1]} |    #{color_cords[5][0]}       #{color_cords[5][1]}       #{color_cords[5][2]}       #{color_cords[5][3]}
      -----------------------------------------
      #{hint_cords[4][2]} #{hint_cords[4][3]} |
      #{hint_cords[4][0]} #{hint_cords[4][1]} |    #{color_cords[4][0]}       #{color_cords[4][1]}       #{color_cords[4][2]}       #{color_cords[4][3]}
      -----------------------------------------
      #{hint_cords[3][2]} #{hint_cords[3][3]} |
      #{hint_cords[3][0]} #{hint_cords[3][1]} |    #{color_cords[3][0]}       #{color_cords[3][1]}       #{color_cords[3][2]}       #{color_cords[3][3]}
      -----------------------------------------
      #{hint_cords[2][2]} #{hint_cords[2][3]} |
      #{hint_cords[2][0]} #{hint_cords[2][1]} |    #{color_cords[2][0]}       #{color_cords[2][1]}       #{color_cords[2][2]}       #{color_cords[2][3]}
      -----------------------------------------
      #{hint_cords[1][2]} #{hint_cords[1][3]} |
      #{hint_cords[1][0]} #{hint_cords[1][1]} |    #{color_cords[1][0]}       #{color_cords[1][1]}       #{color_cords[1][2]}       #{color_cords[1][3]}
      -----------------------------------------
      #{hint_cords[0][2]} #{hint_cords[0][3]} |
      #{hint_cords[0][0]} #{hint_cords[0][1]} |    #{color_cords[0][0]}       #{color_cords[0][1]}       #{color_cords[0][2]}       #{color_cords[0][3]}
      -----------------------------------------
      "
  end
end
