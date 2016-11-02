require_relative 'todo'
require_relative 'todo_list'

FILE_NAME = 'todos.dat'

todos_list = File.exist?(File.expand_path(FILE_NAME)) ? Marshal.load(File.read(FILE_NAME)) : TodoList.new

x = 777
while x != 0
  puts '---------------------------------------'
  puts '1 - Add new todo'
  puts '2 - Check todo as done'
  puts '3 - Cancel todo'
  puts '4 - Display all todo\'s'
  puts '0 - Exit'
  puts '---------------------------------------'
  print 'Enter number of action: '
  x = gets.chomp.to_i
  case (x)
  when 1
    puts '---------------------------------------'
    print 'Enter todo\'s text: '
    todos_list.push(Todo.new(text: gets.chomp))
    puts '---------------------------------------'
  when 2
    todos_list.print
    print 'Enter todo\'s number: '
    todos_list.at(gets.chomp.to_i - 1).done!
  when 3
    todos_list.print
    print 'Enter todo\'s number: '
    todos_list.delete_at(gets.chomp.to_i - 1)
  when 4
    puts '---------------------------------------'
    puts '1 - All'
    puts '2 - Undone'
    puts '3 - Done'
    puts '---------------------------------------'
    print 'Enter number of action: '
    y = gets.chomp.to_i
    puts '---------------------------------------'
    case (y)
    when 1
      todos_list.print
    when 2
      todos_list.print(:undone)
    when 3
      todos_list.print(:done)
    end
    puts '---------------------------------------'
    print 'Press any key to continue...'
    gets
  when 0
    File.open(FILE_NAME, 'w') {|f| f.write(Marshal.dump(todos_list)) }
  end
  system 'clear'
end
