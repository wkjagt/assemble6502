class Assembler::Instructions::TSX < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer Stack ptr to X"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xba, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
