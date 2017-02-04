class Assembler::Instructions::BVS < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on oVerflow Set"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0x70, len: 2, },
    }
  end
end
