require "task_manager"

RSpec.describe TaskManager do
  it "can recall 1 task when asked" do
    task_manager = TaskManager.new
    task_manager.add("do the laundry")
    expect(task_manager.list).to eq "do the laundry"
  end
  it "can recall correctly when given multiple tasks" do
    task_manager = TaskManager.new
    task_manager.add("do the laundry")
    task_manager.add("wash the dishes")
    expect(task_manager.list).to eq "do the laundry, wash the dishes"
  end
  it "can identify if the current task list contains a task with the string '#TODO'" do
    task_manager = TaskManager.new
    task_manager.add("#TODO the laundry")
    task_manager.add("wash the dishes")
    expect(task_manager.todo).to eq "#TODO the laundry"
  end
  it "can identify if the current task list contains a task with the string '#TODO' in case of multiple '#TODO's and if the '#TODO' isnt at the start of the string" do
    task_manager = TaskManager.new
    task_manager.add("#TODO the laundry")
    task_manager.add("wash the dishes")
    task_manager.add("#TODO watch tv")
    task_manager.add("walk the dog #TODO")
    expect(task_manager.todo).to eq "#TODO the laundry, #TODO watch tv, walk the dog #TODO"
    expect(task_manager.list).to eq "#TODO the laundry, wash the dishes, #TODO watch tv, walk the dog #TODO"
  end
end