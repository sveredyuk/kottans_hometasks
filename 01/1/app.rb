x = 777
while x != 0
  print 'Enter A: '
  a = gets.chomp.to_f
  print 'Enter B: '
  b = gets.chomp.to_f
  print 'Enter operation (+, -, *, /): '
  puts "\nResult: #{a.send(gets.chomp, b)}"
  puts "\nEnter 0 to exit or 1 to calculate again."
  x = gets.chomp.to_i
end
