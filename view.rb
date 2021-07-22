class View
  def ask_user_for_title
    puts "what's the title"
    gets.chomp
  end

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      x_or_not = task.completed? ? '[x]' : '[ ]'
      puts "#{index + 1}. #{x_or_not} #{task.title}"
    end
  end

  def ask_for_index
    puts "what's the task index"
    gets.chomp.to_i - 1
  end
end
