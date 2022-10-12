#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO

class TaskManager
  def initialize
    @tasks = []
  end
    def add(task)
    @tasks << task
  end
  def list
    return @tasks.join(", ")
  end
  def todo
    @todo = []
    @tasks.each do |task|
      if task.include?("#TODO")
        @todo << task
      end
    end
  return @todo.join(", ")
  end
end