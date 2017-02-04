class Assembler::Instructions::TAY < Assembler::Instructions::Instruction
  def initialize
    @description = "Transfer A to Y"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xa8, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
