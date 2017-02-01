class Assembler
  module Instructions
    extend self

    UnknownInstruction = Class.new(NameError)

    def self.resolve(line)
      instruction_name, argument = line.split(" ", 2)
      raise(UnknownInstruction, instruction_name) unless defined?(instruction_name)

      const_get(instruction_name).new(Argument.new(argument))
    end
  end
end
