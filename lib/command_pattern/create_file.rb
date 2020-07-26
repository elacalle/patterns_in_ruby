require './command.rb'

class CreateFile < Command
  def initialize
    super('Create text file')
  end

  def execute
    File.open('Log.txt', 'w') { |f| f.write "Hello moto" }
  end

  def unexecute
    File.open('Log.txt', 'r') do |f|
      File.delete(f)
    end
  end
end
