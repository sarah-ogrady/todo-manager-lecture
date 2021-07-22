# require_relative 'task'
require_relative 'repository'
require_relative 'router'
require_relative 'controller'

repo = Repository.new

controller = Controller.new(repo)
router = Router.new(controller)

router.run

# controller.add_task
# controller.add_task

# controller.list_tasks
# controller.add_task
# controller.list_tasks

# controller.mark_as_complete
# controller.list_tasks

# p repo



# TESTS BEFORE WE HAD A CONTROLLER

# task1 = Task.new('chill the beers')
# task2 = Task.new('eat some pizza')

# repo = Repository.new

# repo.add(task1)
# repo.add(task2)

# p repo
