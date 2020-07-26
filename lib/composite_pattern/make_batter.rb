require './composite_task.rb'
require './add_liquids.rb'
require './add_dry_ingredients.rb'
require './mix.rb'

class MakeBatter < CompositeTask
  def initialize
    super('Make Batter')
    add_subtask(Mix.new)
    add_subtask(AddLiquids.new)
    add_subtask(AddLiquids.new)
  end
end
