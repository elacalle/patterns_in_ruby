require './command.rb'
require './create_file.rb'
require './rename_file.rb'

class CommandComposition < Command
  def initialize
    super('Initialize installer')
    @command_list = []
    @command_list.push(CreateFile.new)
    @command_list.push(RenameFile.new)
  end

  def execute
    puts @description
    @command_list.each do |command|
      puts command.description
      command.execute
    end
  end

  def unexecute
    @command_list.reverse.each do |command|
      puts command.description
      command.unexecute
    end
  end
end
