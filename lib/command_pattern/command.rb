class Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
    # Execute hook method
  end

  def unexecute
    # Unexecute hook method
  end
end
