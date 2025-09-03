class HumanPlayer
  attr_accessor :name, :choice

  def initialize
    @name = ''
    @choice = 0
  end

  def set_name
    input = ''
    while input.empty?
      puts 'Please enter your name: '
      input = gets.chomp.capitalize
      self.name = input
    end
  end

  def set_choice
    input = 0
    until [1, 2].include?(input)
      puts 'Would you like to be the codemaker or codebreaker?'
      puts 'Enter 1 for codemaker'
      puts 'Enter 2 for codemaker'
      input = gets.chomp
      self.choice = input
    end
  end
end

player1 = HumanPlayer.new
player1.set_name
player1.set_choice
