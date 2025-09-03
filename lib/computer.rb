class Computer
  attr_accessor :name, :choice

  def initialize
    @name = 'Computer'
    @choice = 0
  end

  def computer_choice(player_choice)
    2 unless player_choice == 1
  end
end
