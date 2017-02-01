class Assembler::Instructions::Instruction
  NoOpcode = Class.new(ArgumentError)

  def initialize(argument)
    addressing_mode = argument.addressing_mode

    unless opcodes.key?(addressing_mode)
      raise(NoOpcode, addressing_mode)
    end

    @opcode = opcodes.fetch(addressing_mode)
    @argument_value = argument.value
  end

  def to_bytecode
    [@opcode, @argument_value]
  end
end
