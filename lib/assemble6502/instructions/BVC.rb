class Assembler::Instructions::BVC < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on oVerflow Clear"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0x50, len: 2, },
    }
  end
end
