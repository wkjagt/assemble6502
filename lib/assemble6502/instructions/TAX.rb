class Assembler::Instructions::TAX < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer A to X"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xaa, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
