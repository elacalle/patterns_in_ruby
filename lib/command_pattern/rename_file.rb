require './command.rb'

class RenameFile < Command
  def initialize
    super('move file')
  end

  def execute
    File.rename('Log.txt', 'Logs.txt')
  end

  def unexecute
    File.rename('Logs.txt', 'Log.txt')
  end
end
