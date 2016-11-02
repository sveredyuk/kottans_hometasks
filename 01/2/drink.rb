class Drink
  attr_reader :name

  def initialize(args)
    @name = args[:name].capitalize
  end
end
