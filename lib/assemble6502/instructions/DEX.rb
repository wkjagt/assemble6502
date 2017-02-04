class Assembler::Instructions::DEX < Assembler::Instructions::Instruction
  def initialize
    @description = "DEcrement X"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xca, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
