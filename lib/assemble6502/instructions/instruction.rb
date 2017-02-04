class Assembler::Instructions::Instruction
  NoOpcode = Class.new(ArgumentError)

  def initialize(argument)
    @operand = argument.operand
    @addressing_mode = argument.addressing_mode

    raise(NoOpcode, @addressing_mode) unless @addressing_modes.key?(argument.addressing_mode)
  end

  def opcode
    @addressing_modes[@addressing_mode][:hex]
  end

  def to_bytecode
    [opcode] + to_little_endian(@operand)
  end

  private

  def to_little_endian(value_string)
    @operand.scan(/.{2}/).reverse.map(&:hex)
  end
end
