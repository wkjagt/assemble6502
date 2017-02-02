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
    [@opcode] + to_little_endian(@argument_value)
  end

  private

  def to_little_endian(value_string)
    @argument_value.scan(/.{2}/).reverse.map(&:hex)
  end
end
