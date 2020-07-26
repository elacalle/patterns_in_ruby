require './task.rb'

class Mix < Task
  def initialize
    super('Mix')
  end

  def get_time_required
    5.0
  end
end
