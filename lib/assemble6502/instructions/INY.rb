class Assembler::Instructions::INY < Assembler::Instructions::Instruction
  def initialize
    @description = "INcrement Y"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xc8, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
