require "todo"
require "todo_list"

RSpec.describe Todo do
  it "todo can initialize with a task and return the task with .task" do
    todo = Todo.new("example task")
    expect(todo.task).to eq "example task"
  end
  
  it "todo throws error when attempting to return non-string with .task" do
    todo = Todo.new(2)
    expect {todo.task}.to raise_error "Task is not a string!"
  end

  it "can mark a task as complete" do
    todo = Todo.new("example")
    expect(todo.done?).to be false
    todo.mark_done!
    expect(todo.done?).to be true
  end
end

RSpec.describe "integration of todo and todo_list" do
  it "can add instance of Todo and return incomplete tasks" do
    todo_list = TodoList.new
    todo = Todo.new("example")
    todo_list.add(todo)
    expect(todo_list.incomplete).to eq "example"
    todo2 = Todo.new("example2")
    todo3 = Todo.new("example3")
    todo_list.add(todo2)
    todo_list.add(todo3)
    expect(todo_list.incomplete).to eq "example\nexample2\nexample3"
    todo2.mark_done!
    expect(todo_list.incomplete).to eq "example\nexample3"
    todo.mark_done!
    todo3.mark_done!
    expect(todo_list.incomplete).to eq "No incomplete tasks"
  end

  it "can return complete tasks" do 
    todo_list = TodoList.new
    todo = Todo.new("example")
    todo_list.add(todo)
    expect(todo_list.complete).to eq "No complete tasks"
    todo.mark_done!
    expect(todo_list.complete).to eq "example"
    todo2 = Todo.new("example2")
    todo_list.add(todo2)
    expect(todo_list.complete).to eq "example"
    todo2.mark_done!
    expect(todo_list.complete).to eq "example\nexample2"
  end

  it "can use .give_up! to mark all tasks as complete" do
    todo_list = TodoList.new
    todo = Todo.new("example")
    todo2 = Todo.new("example2")
    todo3 = Todo.new("example3")
    todo_list.add(todo)
    todo_list.add(todo2)
    todo_list.add(todo3)
    expect(todo_list.incomplete).to eq "example\nexample2\nexample3"
    expect(todo_list.complete).to eq "No complete tasks"
    todo_list.give_up!
    expect(todo_list.incomplete).to eq "No incomplete tasks"
    expect(todo_list.complete).to eq "example\nexample2\nexample3"
  end
end