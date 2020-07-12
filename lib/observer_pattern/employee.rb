require './observable'

class Employee
  include Observable

  attr_accessor :name
  attr_accessor :position
  attr_reader :salary

  def initialize(name, position)
    self.name = name
    self.position = position
  end

  def salary=(value)
    @salary = value
    notify
  end
end
