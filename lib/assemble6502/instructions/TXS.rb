class Assembler::Instructions::TXS < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer X to Stack ptr"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x9a, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
