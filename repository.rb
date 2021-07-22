class Repository
  def initialize
    # STATE
    @tasks = []
  end
  # BEHAVIOUR
  def all
    return @tasks
  end

  def add(task)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end
end
