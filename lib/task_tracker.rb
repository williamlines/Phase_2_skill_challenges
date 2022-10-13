
class TaskTracker
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def list
    return @tasks.join(", ")
  end
end