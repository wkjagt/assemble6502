class Assembler::Instructions::PHA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "PusH Accumulator"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x48, len: 1, cycles: 3, boundry_add: false, },
    }

    super
  end
end
