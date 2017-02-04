class Assembler::Instructions::TXA < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer X to A"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x8a, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
