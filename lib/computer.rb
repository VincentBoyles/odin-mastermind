class ComputerPlayer
  attr_accessor :name, :choice

  def initialize
    @name = 'Computer'
    @choice = ''
  end

  def computer_choice(choice)
    self.choice = if choice == 'Code Maker'
                    'Code Breaker'
                  else
                    'Code Maker'
                  end
  end
end
