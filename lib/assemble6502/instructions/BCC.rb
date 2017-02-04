class Assembler::Instructions::BCC < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on Carry Clear"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0x90, len: 2, },
    }
  end
end
