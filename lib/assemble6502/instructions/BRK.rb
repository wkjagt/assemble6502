class Assembler::Instructions::BRK < Assembler::Instructions::Instruction
  def initialize
    @description = "BReaK"
    @flags = [:b]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x0, len: 1, cycles: 7, boundry_add: false, },
    }
  end
end
