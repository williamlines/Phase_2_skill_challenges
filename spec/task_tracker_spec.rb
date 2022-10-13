require "task_tracker"

RSpec.describe TaskTracker do
  it "can add a task to @tasks" do
    task_tracker = TaskTracker.new
    task_tracker.add("TODO laundry")
    expect(task_tracker.list).to eq "TODO laundry"
    task_tracker.add("TODO walk the dog")
    expect(task_tracker.list).to eq "TODO laundry, TODO walk the dog"
  end
  it "can remove a task from @tasks" do
    task_tracker = TaskTracker.new
    task_tracker.add("TODO laundry")
    task_tracker.add("TODO walk the dog")
    expect(task_tracker.list).to eq "TODO laundry, TODO walk the dog"
    expect(task_tracker.complete("TODO the dishes")).to eq "No such task TODO the dishes"
    expect(task_tracker.list).to eq "TODO laundry, TODO walk the dog"
    expect(task_tracker.complete("TODO laundry")).to eq "TODO laundry completed!"
    expect(task_tracker.list).to eq "TODO walk the dog"
    task_tracker.complete("TODO walk the dog")
    expect(task_tracker.list).to eq "You have no tasks."
  end
end