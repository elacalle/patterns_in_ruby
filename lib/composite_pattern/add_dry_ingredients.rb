require './task.rb'

class AddDryIngredients < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    4.0
  end
end
