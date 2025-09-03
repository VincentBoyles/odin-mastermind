class Players
  def initialize
    @name = ''
    @choice = 0
  end
end

class HumanPlayer
  def initialize
    super(name, choice)
  end
end

class Computer
  def initialize
    super(name, choice)
  end
end
