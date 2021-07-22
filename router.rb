class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "  ------------------  "
    puts "WELCOME TO TASK MASTER"
    puts "  ------------------  "
    loop do
      puts "What do you want to do?"
      puts "1. Add a task"
      puts "2. List tasks"
      puts "3. Mark as complete"
      puts "4. Leave task master"
      choice = gets.chomp
      if choice == '1'
        @controller.add_task
      elsif choice == '2'
        @controller.list_tasks
      elsif choice == '3'
        @controller.mark_as_complete
      elsif choice == '4'
        break
      else
        puts "wrong input"
      end
    end
  end
end
