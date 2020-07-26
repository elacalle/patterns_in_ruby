require './task.rb'

class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_subtask(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_subtask(task)
    @sub_tasks.remove(task)
    task.parent = nil
  end

  def get_time_required
    @sub_tasks.sum { |t| t.get_time_required }
  end
end
