class Human
  attr_reader :name

  def initialize(args)
    @name = args[:name].capitalize
  end

  def invite(human)
    human
  end

  def to_drink(drink)
    "#{self.name} agrees to drink some #{drink.name} with you!"
  end
end
