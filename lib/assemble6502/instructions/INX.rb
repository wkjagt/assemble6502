class Assembler::Instructions::INX < Assembler::Instructions::Instruction
  def initialize
    @description = "INcrement X"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xe8, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
