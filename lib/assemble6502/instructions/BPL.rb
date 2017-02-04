class Assembler::Instructions::BPL < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on PLus"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0x10, len: 2, },
    }
  end
end
