class Assembler::Instructions::PHA < Assembler::Instructions::Instruction
  def initialize
    @description = "PusH Accumulator"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x48, len: 1, cycles: 3, boundry_add: false, },
    }
  end
end
