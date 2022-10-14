class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo
  end

  def incomplete
    incomplete = []
    @todo_list.each do |task|
      if !task.done?
        incomplete << task.task
      end
    end
    if incomplete == []
      return "No incomplete tasks"
    else
      return incomplete.join("\n")
    end
  end

  def complete
    complete = []
    @todo_list.each do |task|
      if task.done?
        complete << task.task
      end
    end
    if complete == []
      return "No complete tasks"
    else
      return complete.join("\n")
    end
  end

  def give_up!
    @todo_list.each do |task|
      task.mark_done!
    end
  end
end