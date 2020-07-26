require './task.rb'
require './add_liquids.rb'
require './add_dry_ingredients.rb'
require './mix.rb'

class MakeBatter < Task
  def initialize
    @sub_tasks = []
    super('Make Batter')
    @sub_tasks.push(Mix.new)
    @sub_tasks.push(AddLiquids.new)
    @sub_tasks.push(AddLiquids.new)
  end

  def get_time_required
    @sub_tasks.sum { |t| t.get_time_required }
  end
end
