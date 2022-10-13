require "task_tracker"

RSpec.describe TaskTracker do
  it "can add a task to @tasks" do
    task_tracker = TaskTracker.new
    task_tracker.add("TODO laundry")
    expect(task_tracker.list).to eq "TODO laundry"
    task_tracker.add("TODO walk the dog")
    expect(task_tracker.list).to eq "TODO laundry, TODO walk the dog"
  end
end