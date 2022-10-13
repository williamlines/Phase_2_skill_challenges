 # complete method that returns "task_name completed" and removes it from the list, unless the task doesn't exist

class TaskTracker
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def complete(task)
    if @tasks.include?(task)
      @tasks = @tasks - [task]
      return "#{task} completed!"
    else
      return "No such task #{task}"
    end
  end

  def list
    if @tasks == []
      return "You have no tasks."
    else
      return @tasks.join(", ")
    end
  end
end