require_relative 'view'
require_relative 'task' # every time we call a class we need a require realtive

class Controller
  def initialize(repository)
    @view = View.new
    @repository = repository
  end
  def add_task
    # 1. ask user what they want to + response
    title = @view.ask_user_for_title
    # 2. make task
    task = Task.new(title)
    # 3. Give task to the repo
    @repository.add(task)
  end

  def list_tasks
    # 1. sk repo for tasks
    tasks = @repository.all
    # 2. ask view to print tasks
    @view.print_tasks(tasks)
  end

  def mark_as_complete
    # ask which one the user wants to mark
    index = @view.ask_for_index
    # change boolean true
    task = @repository.find(index) # task instance
    # smark as done
    task.mark_as_done
  end
end
