class Assembler::Instructions::BCS < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on Carry Set"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0xb0, len: 2, },
    }
  end
end
