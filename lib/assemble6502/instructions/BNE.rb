class Assembler::Instructions::BNE < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on Not Equal"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0xd0, len: 2, },
    }
  end
end
