class Todo
  def initialize(task) # task is a string
    @task = task
    @done = []
  end

  def task
    if @task.is_a?(String)
      return @task
    else 
      fail "Task is not a string!"
    end
  end

  def mark_done!
    if @task.is_a?(String)
      @done << @task
    else 
      fail "Task is not a string!"
    end
  end

  def done?
    if @done.include?(@task)
      return true
    else
      return false
    end 
  end
end