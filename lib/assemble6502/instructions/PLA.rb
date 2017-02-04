class Assembler::Instructions::PLA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "PuLl Accumulator"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x68, len: 1, cycles: 4, boundry_add: false, },
    }

    super
  end
end
