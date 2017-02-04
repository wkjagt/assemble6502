class Assembler::Instructions::DEY < Assembler::Instructions::Instruction
  def initialize
    @description = "DEcrement Y"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x88, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
