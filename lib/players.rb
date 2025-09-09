class HumanPlayer
  attr_accessor :name, :choice

  def initialize
    @name = ''
    @choice = ''
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
      puts 'Would you like to be the Code Maker or Code Breaker?'
      puts 'Enter 1 for Code Breaker'
      puts 'Enter 2 for Code Maker'
      input = gets.chomp.to_i
    end
    case input
    when 1
      self.choice = 'Code Breaker'
    when 2
      self.choice = 'Code Maker'
    end
  end
end
