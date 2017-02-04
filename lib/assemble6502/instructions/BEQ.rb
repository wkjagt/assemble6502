class Assembler::Instructions::BEQ < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on Equal"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0xf0, len: 2, },
    }
  end
end
