class Assembler::Instructions::TYA < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer Y to A"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x98, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
