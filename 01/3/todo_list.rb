class TodoList < Array

  def print(status = nil)
    self.each_with_index do |todo, index|
      puts "#{index + 1}) #{todo.text} :: #{todo.status}" if status.nil? || todo.status?(status)
    end
  end
end