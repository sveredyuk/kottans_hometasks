require_relative 'human'
require_relative 'drink'

volodya = Human.new(name: 'Volodya')
ira = Human.new(name: 'ira')
coffee = Drink.new(name: 'latte')

puts "volodya.is_a?(Human) => #{volodya.is_a?(Human)}"
puts "Volodya's name is #{volodya.name}"
puts "ira.is_a?(Human) => #{ira.is_a?(Human)}"
puts "coffee.is_a?(Drink) => #{coffee.is_a?(Drink)}"
puts "Drink's name is #{coffee.name}"
puts volodya.invite(ira).to_drink(coffee)
