require './task.rb'

class AddLiquids < Task
  def initialize
    super('Add Liquids')
  end

  def get_time_required
    3.0
  end
end
